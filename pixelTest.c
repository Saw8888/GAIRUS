#include <windows.h>
#include <stdio.h>
#include <stdlib.h>

HDC hDC;
HWND hwnd;

void DrawPixel(int x, int y, COLORREF color) {
 SetPixel(hDC, x, y, color);
}
int main() {
 hDC = GetDC(NULL);
 hwnd = GetDesktopWindow();

 double x,y;
 
 RECT rect;
 if(GetWindowRect(hwnd, &rect)){
  x = rect.right - rect.left;
  y = rect.bottom - rect.top;
 }

 while(1){
  for(double i=0;i<x;i++){
   for(double m=0;m<y;m++){
    DrawPixel(i,m, RGB((int)((i/x)*255),0,0));
   }
  }
 }
 ReleaseDC(hwnd, hDC);
 return 0;
}
