;thank you for that nice work. I added mouse follow. appreciated.

#SingleInstance Force
SetBatchLines, -1
CoordMode, ToolTip, Screen

Text=
(
Use template to easily create your own style.
Please share your custom style and include a screenshot.
It will help a lot of people.
)

; Use the template to easily create your own style. Once created, you can add it to the btt() function to use it as an internal style.
; All supported parameters are listed below. All parameters can be omitted.
; Please share your custom style and include a screenshot. It will help a lot of people.
; Attention:
; Color => ARGB => Alpha Red Green Blue => 0x ff aa bb cc => 0xffaabbcc
Template :=  {Border:20                                      ; If omitted, 1 will be used. Range 0-20.
                      , Rounded:30                                     ; If omitted, 3 will be used. Range 0-30.
                      , Margin:30                                      ; If omitted, 5 will be used. Range 0-30.
                      , BorderColor:0xffaabbcc                         ; ARGB
                      , BorderColorLinearGradientStart:0xff16a085      ; ARGB
                      , BorderColorLinearGradientEnd:0xfff4d03f        ; ARGB
                      , BorderColorLinearGradientAngle:45              ; Mode=8 Angle 0(L to R) 90(U to D) 180(R to L) 270(D to U)
                      , BorderColorLinearGradientMode:1                ; Mode=4 Angle 0(L to R) 90(D to U), Range 1-8.
                      , TextColor:0xff112233                           ; ARGB
                      , TextColorLinearGradientStart:0xff00416a        ; ARGB
                      , TextColorLinearGradientEnd:0xffe4e5e6          ; ARGB
                      , TextColorLinearGradientAngle:90                ; Mode=8 Angle 0(L to R) 90(U to D) 180(R to L) 270(D to U)
                      , TextColorLinearGradientMode:1                  ; Mode=4 Angle 0(L to R) 90(D to U), Range 1-8.
                      , BackgroundColor:0xff778899                     ; ARGB
                      , BackgroundColorLinearGradientStart:0xff8DA5D3  ; ARGB
                      , BackgroundColorLinearGradientEnd:0xffF4CFC9    ; ARGB
                      , BackgroundColorLinearGradientAngle:135         ; Mode=8 Angle 0(L to R) 90(U to D) 180(R to L) 270(D to U)
                      , BackgroundColorLinearGradientMode:1            ; Mode=4 Angle 0(L to R) 90(D to U), Range 1-8.
                      , Font:"Font Name"                               ; If omitted, ToolTip's Font will be used.
                      , FontSize:20                                    ; If omitted, 12 will be used.
                      , FontRender:5                                   ; If omitted, 5 will be used. Range 0-5.
                      , FontStyle:"Regular Bold Italic BoldItalic Underline Strikeout"}

loop, 90
{
    ; By changing the angle of the color gradient, a simple animation can be easily implemented.
    MouseGetPos, xPos, yPos  ; Get current mouse coordinates
    Angle:=(A_Index-1)*3
    gosub, GetStyles
    btt(Text,xPos,yPos,2,OwnStyle2)
    Sleep, 10
}
ExitApp

GetStyles:
OwnStyle2 := {Border:3
                        , Rounded:30
                        , Margin:30
                        , BorderColorLinearGradientStart:0xffb7407c
                        , BorderColorLinearGradientEnd:0xff3881a7
                        , BorderColorLinearGradientAngle:Angle+45
                        , BorderColorLinearGradientMode:6
                        , TextColor:0xffd9d9db
                        , BackgroundColor:0xff26293a}

; On a white background, FontRender = 4 is better than 5
return
