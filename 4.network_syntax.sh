# 프로세스 목록 조회
ps -ef
ps -ef | grep "nginx"   # "ngnix" 프로그램을 찾을 때 (!정확한 명칭 필요)

# 패키지 관련
# yum : redhat 계열 패키지 관리 도구
# apt/apt-get : debian 계열 패키지 관리 도구

# 패키지 목록 최신화
sudo apt update

# nginx 설치
sudo apt install nginx

# 프로그램 실행 관리 도구 : systemctl
sudo systemctl start nginx
sudo systemctl stop nginx

# 프로세스 강제 종료 (!)
kill -9 프로세스ID

# 네트워크 관련 명령어
# 로컬 ip 정보 조회
ifconfig

# 특정 도메인의 ip 주소 정보 조회 : DNS 서버에 문의
nslookup naver.com

# 네트워크 연결 상태 조회
# 일반적으로 ping은 보안상 막아두고 있음
ping IP주소
ping 8.8.8.8    # 구글 DNS서버인데 퍼플릭하게 열어둠

# ip와 포트를 이용하여 특정 프로그램의 이용가능상태까지 조회
# 일반적으로 telnet이 막혀있거나, 사용하기를 권장하지 않음
telnet IP주소 포트번호
# nc : netcat
# http의 경우 포트번호 : 80
# https의 경우 포트번호 : 443
nc -zv IP주소(또는 도메인) 포트번호

# 원격 접속 (사용포트 : 22)
ssh 계정명@도메인주소(또는 IP주소)
# 원격 파일 전송 (사용포트 : 22)
scp 전송할파일 원격지주소