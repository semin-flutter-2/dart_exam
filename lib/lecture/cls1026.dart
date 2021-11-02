void main() {
  List<int> nums = [1, 2, 3, 4, 5];   // index는 0부터~

  int total = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] % 2 == 0) { // 짝수
      total = total + nums[i];
    }
  }

  print(total);

  nums[0] = 10;
  print(nums);

  print(nums[0]);
  print(nums[4]);
  // print(nums[5]);

  // 반복문
  // 초기값 ; 조건 ; 후위 연산
  for (int i = 0; i < nums.length; i++) {
    print(nums[i]);
  }

  nums.add(10);
  nums.remove(10);

  print(nums.first);
  print(nums.last);
  print(nums.isEmpty);
  print(nums.isNotEmpty);
}