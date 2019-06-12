package sh.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sh.dao.ShPollDao;
import sh.model.ShBbsParam;
import sh.model.ShPdsDto;
import sh.model.ShPollBean;
import sh.model.ShPollDto;
import sh.model.ShPollSubDto;
import sh.model.ShVoter;
import sh.service.ShPdsService;
import sh.service.ShPollService;

@Service
public class ShPollServiceImpl implements ShPollService {

	@Autowired
	ShPollDao shPollDao;
	
	@Override
	public List<ShPollDto> getPollAllList(String id) {
		
		//��� ��ǥ ����� ���� �´�
		List<ShPollDto> list = shPollDao.getPollAlllist();
		
		//��ǥ�� �� �� �ִ� �׸�� ���� �׸����� ���� ���(�޸𸮿� �������ֱ� ������ ���Ӱ� ���� �ۼ�)
		List<ShPollDto> plist = new ArrayList<ShPollDto>();
		
		
		for(ShPollDto poll : list) {
			int pollid = poll.getPollid(); //��ǥ��ȣ
			
			int count = shPollDao.isVote(new ShVoter(pollid, -1, id));		//pollid ����. db�� �����ڳ���. ->seq in//voterdao
			if(count == 1) {	// ��ǥ�� ����
				poll.setVote(true);
			}
			else {	// ��ǥ�� ������
				poll.setVote(false);				
			}
			
			plist.add(poll);
		}
		
		return plist;
			
			
	}

	@Override
	public void makePoll(ShPollBean pbean) {
		
		//���� �׸�(�Ű� ���� ����� ���� ShPollDto��)
		ShPollDto poll = new ShPollDto(pbean.getId(),		//��ǥ ���� ����� ID
										pbean.getQuestion(),	//����
										pbean.getSdate(),		//������
										pbean.getEdate(),		//������
										pbean.getItemcount(), 0);	//������ ����,������ ��ǥ�� ����� ��(ó������ 0�̶� ��Ƴ���)
		
		//DB insert
		shPollDao.makePoll(poll);
		
		//�����
		int itemcount = pbean.getItemcount();		//������ ����
		String answer[] = pbean.getPollnum();		//�� ������ ������ �ִ� 10���� �迭�� ��ü�� �����ؼ� ����� ����(�����)
		
		for (int i = 0; i < itemcount; i++) {
			ShPollSubDto pollsub = new ShPollSubDto();
			pollsub.setAnswer(answer[i]);		//for�� ���鼭 set���� ������ ������ �亯���� �Ұž�
			shPollDao.makePollSub(pollsub);
		}
		
	}

	@Override
	public ShPollDto getPoll(ShPollDto poll) {
		return shPollDao.getPoll(poll);
	}

	@Override
	public List<ShPollSubDto> getPollSubList(ShPollDto poll) {
		return shPollDao.getPollSubList(poll);
	}

	@Override
	public void polling(ShVoter voter) {
		shPollDao.pollingVoter(voter);		//��ǥ �Ѵ����� ����� ����
		shPollDao.pollingPoll(voter);		//��Ż �÷���
		shPollDao.pollingSub(voter);		//��� ��ǥ�ߴ��� acount �� �ϳ� �÷���
	}
	
	



}
