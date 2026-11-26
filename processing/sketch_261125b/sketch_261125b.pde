int euclideanAlgorithm(int x, int y) {
  int remainder = y;
  while (remainder > 0) {
    remainder = x % y;
    x = y;
    y = remainder;
  }
  return x;
}

void setup() {
  // 計算対象の2つの数
  int x = 10;
  int y = 6;

  // 拡大倍率（そのままの数だと描画される画像が小さいため）
  int scalar = 50;
  x *= scalar;
  y *= scalar;
  
  // x * yの正方形から求めた商は、その中にある正方形の数である
  // 一度の計算で求められる長方形はy+余りの辺のものであるので
  // 幅をyから余りに再代入する
  int wd = y;
  int xPos = 0;
  int yPos = 0;
  
  size(500, 500);
  
  int itr = 0;
  while (wd > 0) {
    itr++;
    if (itr % 2 == 1) {
      while (xPos + wd <= x) {
        rect(xPos, yPos, wd, wd);
        xPos += wd;
      }
      wd = x - xPos;
    } else {
      while (yPos + wd <= y) {
        rect(xPos, yPos, wd, wd);
        yPos += wd;
      }
      wd = y - yPos;
    }
  }
}
