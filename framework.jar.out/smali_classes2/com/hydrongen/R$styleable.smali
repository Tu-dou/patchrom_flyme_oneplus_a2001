.class public final Lcom/hydrongen/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hydrongen/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircleImageView:[I

.field public static final OPAlertDialog:[I

.field public static final OPAlertDialog_android_layout:I = 0x0

.field public static final OPCompoundbutton:[I

.field public static final OPCompoundbutton_android_button:I = 0x1

.field public static final OPCompoundbutton_android_buttonTint:I = 0x3

.field public static final OPCompoundbutton_android_buttonTintMode:I = 0x4

.field public static final OPCompoundbutton_android_checked:I = 0x0

.field public static final OPCompoundbutton_android_radius:I = 0x2

.field public static final OPEditText:[I

.field public static final OPEditText_android_background:I = 0x2

.field public static final OPEditText_android_textColor:I = 0x0

.field public static final OPEditText_android_textColorHint:I = 0x1

.field public static final OPListView:[I

.field public static final OPListView_android_divider:I = 0x0

.field public static final OPRadioGroup:[I

.field public static final OPRadioGroup_android_checkedButton:I = 0x1

.field public static final OPRadioGroup_android_orientation:I

.field public static final OPSwitch:[I

.field public static final OPSwitch_android_radius:I

.field public static final OneplusTheme:[I

.field public static final RecipientEditTextView:[I

.field public static final demo_styleadle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1018
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hydrongen/R$styleable;->CircleImageView:[I

    .line 1031
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/hydrongen/R$styleable;->OPAlertDialog:[I

    .line 1059
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/hydrongen/R$styleable;->OPCompoundbutton:[I

    .line 1107
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/hydrongen/R$styleable;->OPEditText:[I

    .line 1138
    new-array v0, v4, [I

    const v1, 0x1010129

    aput v1, v0, v3

    sput-object v0, Lcom/hydrongen/R$styleable;->OPListView:[I

    .line 1159
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/hydrongen/R$styleable;->OPRadioGroup:[I

    .line 1184
    new-array v0, v4, [I

    const v1, 0x10101a8

    aput v1, v0, v3

    sput-object v0, Lcom/hydrongen/R$styleable;->OPSwitch:[I

    .line 1201
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/hydrongen/R$styleable;->OneplusTheme:[I

    .line 1214
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/hydrongen/R$styleable;->RecipientEditTextView:[I

    .line 1227
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/hydrongen/R$styleable;->demo_styleadle:[I

    return-void

    .line 1018
    nop

    :array_0
    .array-data 4
        0x301000b
        0x301000c
    .end array-data

    .line 1031
    :array_1
    .array-data 4
        0x10100f2
        0x3010005
        0x3010006
        0x3010007
        0x3010008
        0x3010009
        0x301000a
    .end array-data

    .line 1059
    :array_2
    .array-data 4
        0x1010106
        0x1010107
        0x10101a8
        0x101046f
        0x1010470
    .end array-data

    .line 1107
    :array_3
    .array-data 4
        0x1010098
        0x101009a
        0x10100d4
        0x3010002
    .end array-data

    .line 1159
    :array_4
    .array-data 4
        0x10100c4
        0x1010148
    .end array-data

    .line 1201
    :array_5
    .array-data 4
        0x3010000
        0x3010001
        0x3010002
        0x3010003
        0x3010004
        0x3010005
        0x3010006
        0x3010007
        0x3010008
        0x3010009
        0x301000a
    .end array-data

    .line 1214
    :array_6
    .array-data 4
        0x301000d
        0x301000e
        0x301000f
        0x3010010
        0x3010011
        0x3010012
        0x3010013
        0x3010014
        0x3010015
        0x3010016
    .end array-data

    .line 1227
    :array_7
    .array-data 4
        0x3010017
        0x3010018
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method