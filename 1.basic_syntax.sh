# 현재 위치 경로를 출력
pwd

# 현재 위치에서 파일 및 폴더 조회
ls

# 목록 조회 자세히
ls -l

# 목록 조회 자세히, 숨김파일까지
ls -al

# 목록 조회 자세히, 숨김파일, 오래된 순으로 정렬(최신은 alt)
ls -alrt

# 디렉토리 생성
mkdir jiki

# 특정 디렉토리로 이동(절대경로는 /home/...)
cd jiki

# 상위 디렉토리로 이동
cd ..
# 또는 cd ../

# root 디렉토리로 이동
cd /

# 직전 폴더로 이동
cd -

# home 경로로 이동
cd
cd ~

# 상대경로와 절대경로
# 상대경로: cd ../../
# 절대경로: cd /home/..

# 비어었는 파일 만들기
touch 파일명

# 터미널 창에 파일 내용 출력하기기
cat 파일명

# 파일 내용 상위 10줄 출력하기
head 파일명

# 파일 내용 하위 10줄 출력하기
tail 파일명

# 파일 내용 상/하위 n개 조회
tail -n 파일명

# 파일 내용 실시간 조회
tail -f 파일명

# 파일 내용 편집기 : nano, vi
# 도스키 위/아래를 통해 이전명령어 조회
# 이전에 실행했던 명령어 모두 조회
history
# 현재 터미널창에 보이는 명령어 내역 정리
clear
# ^c을 통해 입력명령어 취소

# 파일 삭제 명령어. -f 옵션을 통해 묻지않고 삭제 가능
rm 파일명
# 폴더째 삭제
rm -r 폴더명

# 터미널 창에 문자열을 출력
echo "hello world"
# echo를 통해 파일에 내용 입력
# > : 덮어쓰기, >> : 추가모드
echo "hello world" > first_file.txt

# cp : 복사 명령어
# cp 복사대상 복사될파일명명
# -r 옵션 : 폴더 복사시
cp 1_file.txt 2_file.txt
cp 1_file.txt ../2_file.txt # 상대경로로 복사 지정

# grep : 파일 내에서 문자열 찾기
# r : 모든 디렉토리 내, n : 라인 수 출력, i : 대소문자 구분없이이
# grep 옵션 "문자열" 경로
grep -rni "hello" .

# find : 이름으로 파일 또는 디렉토리 찾기
# find 경로 옵션 "파일 또는 디렉토리명"
find . -name "*.txt"
find . -type f

# find와 grep 혼용  (!!!!!시험문제!!!!)
# find 경로 옵션 "파일 또는 디렉토리명" -exec grep 옵션 "문자열" {} \;
find . -name "*.txt" -exec grep -rni "hello" {} \;
# find 경로 옵션 "파일 또는 디렉토리명" | xargs grep 옵션 "문자열"
find . -name "*.txt" | xargs grep -rni "hello"


# test
# 타입은 file인 파일 중에 이름은 first로 시작하고
# 그 파일들 안에 hello라는 키워드가 들어가 있는 문장 찾기
find . name "first*" type -f | xargs grep -rni "hello"
find . name "first*" type -f -exec grep -rni "hello" {} \;