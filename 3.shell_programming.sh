# 쉘스크립트 작성 : 반드시 확장자는 .sh (+ 실행 권한 반드시 필요)
touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x myscript.sh
# 스크립트 실행
./myscript.sh

##################실습####################
# 터미널창에 "script practice start" 문구 출력
echo "script practice start"
# 홈 디렉토리에서 mydir이라는 폴더 생성
cd ..   # pwd는 /home/jiki
mkdir mydir
# mydir로 이동하여 file1.txt, file2.txt 파일 생성
cd mydir
touch file1.txt file2.txt
# file1.txt에는 hello from file1 이라는 문구 삽입
# file2.txt에는 hello from file2 이라는 문구 삽입
# file1.txt 파일을 백업본(copy본)을 생성. 이름은 file1_backup.txt
# file2.txt 파일의 이름은 file2_rename.txt로 변경
# 터미널창에 "script practice end" 문구 출력

# myscript2 생성 후 아래 코드 작성 및 실행
# if문
if [ 1 -gt 2 ]; then   # 1 > 2 gt: giant than, lt: less than
    echo "hello world1"
else
    echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name="first_file.txt"
if [ -f "$file_name" ]; then
    echo "$file_namet file exists"
else
    echo "$file_name file doesn't exists"
fi

# for문
for a in {1..100}
do
    echo "hello world$a"
done

# for문과 파일/디렉토리 목록 조회
for a in *
do 
    echo "$a"
done

# for문의 변수값을 증가
count=100
for a in {1..100}
do
    let count=count+1
done
echo "count value is $count"

# for문 및 변수값 세팅 활용
file_count=0
dir_count=0
for a in *
do 
    if [ -f "$a" ]; then
        file_count=file_count+1
    fi
    if [ -d "$a" ]; then
        dir_count=dir_count+1
    fi
done
echo "file count is $file_count"
echo "directory count is $dir_count"