.class public Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;
.super Ljava/lang/Object;
.source "FaceBeautyUtil.java"


# static fields
.field public static final BEAUTY_MODE_MANUAL:I = 0x2

.field public static final BEAUTY_MODE_OFF:I = 0x0

.field public static final BEAUTY_MODE_SMART:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FaceBeautyUtil"

.field private static mBeautyLevel:I

.field public static mBeautyMode:I

.field public static mBigEye:I

.field public static mBigNose:I

.field public static mBlackEye:Z

.field public static mBrightEye:I

.field public static mBrightTooth:I

.field public static mRemoveOil:I

.field public static mRemoveSpot:Z

.field public static mSamllFace:I

.field public static mSkinBright:I

.field public static mSkinSoften:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    .line 21
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    .line 23
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    .line 25
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    .line 27
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    .line 29
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    .line 31
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    .line 33
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    .line 35
    sput-boolean v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    .line 37
    sput-boolean v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findProperBigEye(II)I
    .locals 5
    .param p0, "sex"    # I
    .param p1, "age"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v3, 0x28

    const/16 v2, 0x1e

    const/16 v0, 0x14

    const/16 v1, 0xa

    .line 222
    packed-switch p0, :pswitch_data_0

    .line 262
    :goto_0
    const-string v0, "FaceBeautyUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBigEye = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    return v0

    .line 224
    :pswitch_0
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 225
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 226
    :cond_0
    if-lt p1, v1, :cond_1

    if-ge p1, v0, :cond_1

    .line 227
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 228
    :cond_1
    if-lt p1, v0, :cond_2

    if-ge p1, v2, :cond_2

    .line 229
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 230
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 231
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 232
    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 233
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 234
    :cond_4
    if-lt p1, v4, :cond_5

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_5

    .line 235
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 237
    :cond_5
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 242
    :pswitch_1
    if-ltz p1, :cond_6

    if-ge p1, v1, :cond_6

    .line 243
    const/16 v0, 0xf

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 244
    :cond_6
    if-lt p1, v1, :cond_7

    if-ge p1, v0, :cond_7

    .line 245
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 246
    :cond_7
    if-lt p1, v0, :cond_8

    if-ge p1, v2, :cond_8

    .line 247
    const/16 v0, 0x19

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 248
    :cond_8
    if-lt p1, v2, :cond_9

    if-ge p1, v3, :cond_9

    .line 249
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 250
    :cond_9
    if-lt p1, v3, :cond_a

    if-ge p1, v4, :cond_a

    .line 251
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 252
    :cond_a
    if-lt p1, v4, :cond_b

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_b

    .line 253
    const/16 v0, 0xf

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto :goto_0

    .line 255
    :cond_b
    const/16 v0, 0xf

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigEye:I

    goto/16 :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static findProperBigNose(II)I
    .locals 5
    .param p0, "sex"    # I
    .param p1, "age"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v3, 0x28

    const/16 v2, 0x1e

    const/16 v0, 0x14

    const/16 v1, 0xa

    .line 492
    packed-switch p0, :pswitch_data_0

    .line 532
    :goto_0
    const-string v0, "FaceBeautyUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBigNose = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    return v0

    .line 494
    :pswitch_0
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 495
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 496
    :cond_0
    if-lt p1, v1, :cond_1

    if-ge p1, v0, :cond_1

    .line 497
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 498
    :cond_1
    if-lt p1, v0, :cond_2

    if-ge p1, v2, :cond_2

    .line 499
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 500
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 501
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 502
    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 503
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 504
    :cond_4
    if-lt p1, v4, :cond_5

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_5

    .line 505
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 507
    :cond_5
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 512
    :pswitch_1
    if-ltz p1, :cond_6

    if-ge p1, v1, :cond_6

    .line 513
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 514
    :cond_6
    if-lt p1, v1, :cond_7

    if-ge p1, v0, :cond_7

    .line 515
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 516
    :cond_7
    if-lt p1, v0, :cond_8

    if-ge p1, v2, :cond_8

    .line 517
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 518
    :cond_8
    if-lt p1, v2, :cond_9

    if-ge p1, v3, :cond_9

    .line 519
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 520
    :cond_9
    if-lt p1, v3, :cond_a

    if-ge p1, v4, :cond_a

    .line 521
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 522
    :cond_a
    if-lt p1, v4, :cond_b

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_b

    .line 523
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 525
    :cond_b
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBigNose:I

    goto :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static findProperBlackEye(II)Z
    .locals 5
    .param p0, "sex"    # I
    .param p1, "age"    # I

    .prologue
    const/16 v4, 0x28

    const/16 v3, 0x1e

    const/16 v2, 0x14

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 312
    packed-switch p0, :pswitch_data_0

    .line 352
    :goto_0
    const-string v0, "FaceBeautyUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBlackEye = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-boolean v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    return v0

    .line 314
    :pswitch_0
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 315
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 316
    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p1, v2, :cond_1

    .line 317
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 318
    :cond_1
    if-lt p1, v2, :cond_2

    if-ge p1, v3, :cond_2

    .line 319
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 320
    :cond_2
    if-lt p1, v3, :cond_3

    if-ge p1, v4, :cond_3

    .line 321
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 322
    :cond_3
    if-lt p1, v4, :cond_4

    const/16 v0, 0x32

    if-ge p1, v0, :cond_4

    .line 323
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 324
    :cond_4
    const/16 v0, 0x32

    if-lt p1, v0, :cond_5

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_5

    .line 325
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 327
    :cond_5
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 332
    :pswitch_1
    if-ltz p1, :cond_6

    if-ge p1, v0, :cond_6

    .line 333
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 334
    :cond_6
    if-lt p1, v0, :cond_7

    if-ge p1, v2, :cond_7

    .line 335
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 336
    :cond_7
    if-lt p1, v2, :cond_8

    if-ge p1, v3, :cond_8

    .line 337
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 338
    :cond_8
    if-lt p1, v3, :cond_9

    if-ge p1, v4, :cond_9

    .line 339
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 340
    :cond_9
    if-lt p1, v4, :cond_a

    const/16 v0, 0x32

    if-ge p1, v0, :cond_a

    .line 341
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 342
    :cond_a
    const/16 v0, 0x32

    if-lt p1, v0, :cond_b

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_b

    .line 343
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto :goto_0

    .line 345
    :cond_b
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBlackEye:Z

    goto/16 :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static findProperBright(II)I
    .locals 5
    .param p0, "sex"    # I
    .param p1, "age"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v3, 0x28

    const/16 v0, 0x1e

    const/16 v2, 0xa

    const/16 v1, 0x14

    .line 129
    packed-switch p0, :pswitch_data_0

    .line 166
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 167
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    .line 172
    :cond_0
    :goto_0
    const-string v0, "FaceBeautyUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSkinBright = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    return v0

    .line 131
    :pswitch_0
    if-ltz p1, :cond_1

    if-ge p1, v2, :cond_1

    .line 132
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 133
    :cond_1
    if-lt p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    .line 134
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 135
    :cond_2
    if-lt p1, v1, :cond_3

    if-ge p1, v0, :cond_3

    .line 136
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 137
    :cond_3
    if-lt p1, v0, :cond_4

    if-ge p1, v3, :cond_4

    .line 138
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 139
    :cond_4
    if-lt p1, v3, :cond_5

    if-ge p1, v4, :cond_5

    .line 140
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 141
    :cond_5
    if-lt p1, v4, :cond_6

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_6

    .line 142
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 144
    :cond_6
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 149
    :pswitch_1
    if-ltz p1, :cond_7

    if-ge p1, v2, :cond_7

    .line 150
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 151
    :cond_7
    if-lt p1, v2, :cond_8

    if-ge p1, v1, :cond_8

    .line 152
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 153
    :cond_8
    if-lt p1, v1, :cond_9

    if-ge p1, v0, :cond_9

    .line 154
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 155
    :cond_9
    if-lt p1, v0, :cond_a

    if-ge p1, v3, :cond_a

    .line 156
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 157
    :cond_a
    if-lt p1, v3, :cond_b

    if-ge p1, v4, :cond_b

    .line 158
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 159
    :cond_b
    if-lt p1, v4, :cond_c

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_c

    .line 160
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 162
    :cond_c
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static findProperBrightEye(II)I
    .locals 5
    .param p0, "sex"    # I
    .param p1, "age"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v3, 0x28

    const/16 v2, 0x1e

    const/16 v0, 0xa

    const/16 v1, 0x14

    .line 267
    packed-switch p0, :pswitch_data_0

    .line 307
    :goto_0
    const-string v0, "FaceBeautyUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBrightEye = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    return v0

    .line 269
    :pswitch_0
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 270
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 271
    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 272
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 273
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 274
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 275
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 276
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 277
    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 278
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 279
    :cond_4
    if-lt p1, v4, :cond_5

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_5

    .line 280
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 282
    :cond_5
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 287
    :pswitch_1
    if-ltz p1, :cond_6

    if-ge p1, v0, :cond_6

    .line 288
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 289
    :cond_6
    if-lt p1, v0, :cond_7

    if-ge p1, v1, :cond_7

    .line 290
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 291
    :cond_7
    if-lt p1, v1, :cond_8

    if-ge p1, v2, :cond_8

    .line 292
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 293
    :cond_8
    if-lt p1, v2, :cond_9

    if-ge p1, v3, :cond_9

    .line 294
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 295
    :cond_9
    if-lt p1, v3, :cond_a

    if-ge p1, v4, :cond_a

    .line 296
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 297
    :cond_a
    if-lt p1, v4, :cond_b

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_b

    .line 298
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 300
    :cond_b
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightEye:I

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static findProperBrightTooth(II)I
    .locals 5
    .param p0, "sex"    # I
    .param p1, "age"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v3, 0x28

    const/16 v2, 0x1e

    const/16 v0, 0xa

    const/16 v1, 0x14

    .line 357
    packed-switch p0, :pswitch_data_0

    .line 397
    :goto_0
    const-string v0, "FaceBeautyUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBrightTooth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    return v0

    .line 359
    :pswitch_0
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 360
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 361
    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 362
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 363
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 364
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 365
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 366
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 367
    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 368
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 369
    :cond_4
    if-lt p1, v4, :cond_5

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_5

    .line 370
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 372
    :cond_5
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 377
    :pswitch_1
    if-ltz p1, :cond_6

    if-ge p1, v0, :cond_6

    .line 378
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 379
    :cond_6
    if-lt p1, v0, :cond_7

    if-ge p1, v1, :cond_7

    .line 380
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 381
    :cond_7
    if-lt p1, v1, :cond_8

    if-ge p1, v2, :cond_8

    .line 382
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 383
    :cond_8
    if-lt p1, v2, :cond_9

    if-ge p1, v3, :cond_9

    .line 384
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 385
    :cond_9
    if-lt p1, v3, :cond_a

    if-ge p1, v4, :cond_a

    .line 386
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 387
    :cond_a
    if-lt p1, v4, :cond_b

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_b

    .line 388
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 390
    :cond_b
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBrightTooth:I

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static findProperRemoveOil(II)I
    .locals 5
    .param p0, "sex"    # I
    .param p1, "age"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v3, 0x28

    const/16 v2, 0x1e

    const/16 v0, 0xa

    const/16 v1, 0x14

    .line 447
    packed-switch p0, :pswitch_data_0

    .line 487
    :goto_0
    const-string v0, "FaceBeautyUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRemoveOil = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    sget v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    return v0

    .line 449
    :pswitch_0
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 450
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 451
    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 452
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 453
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 454
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 455
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 456
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 457
    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 458
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 459
    :cond_4
    if-lt p1, v4, :cond_5

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_5

    .line 460
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 462
    :cond_5
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 467
    :pswitch_1
    if-ltz p1, :cond_6

    if-ge p1, v0, :cond_6

    .line 468
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 469
    :cond_6
    if-lt p1, v0, :cond_7

    if-ge p1, v1, :cond_7

    .line 470
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 471
    :cond_7
    if-lt p1, v1, :cond_8

    if-ge p1, v2, :cond_8

    .line 472
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 473
    :cond_8
    if-lt p1, v2, :cond_9

    if-ge p1, v3, :cond_9

    .line 474
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 475
    :cond_9
    if-lt p1, v3, :cond_a

    if-ge p1, v4, :cond_a

    .line 476
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 477
    :cond_a
    if-lt p1, v4, :cond_b

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_b

    .line 478
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 480
    :cond_b
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveOil:I

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static findProperRemoveSpot(II)Z
    .locals 5
    .param p0, "sex"    # I
    .param p1, "age"    # I

    .prologue
    const/16 v4, 0x28

    const/16 v3, 0x1e

    const/16 v2, 0x14

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 402
    packed-switch p0, :pswitch_data_0

    .line 442
    :goto_0
    const-string v0, "FaceBeautyUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRemoveSpot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget-boolean v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    return v0

    .line 404
    :pswitch_0
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 405
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 406
    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p1, v2, :cond_1

    .line 407
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 408
    :cond_1
    if-lt p1, v2, :cond_2

    if-ge p1, v3, :cond_2

    .line 409
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 410
    :cond_2
    if-lt p1, v3, :cond_3

    if-ge p1, v4, :cond_3

    .line 411
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 412
    :cond_3
    if-lt p1, v4, :cond_4

    const/16 v0, 0x32

    if-ge p1, v0, :cond_4

    .line 413
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 414
    :cond_4
    const/16 v0, 0x32

    if-lt p1, v0, :cond_5

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_5

    .line 415
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 417
    :cond_5
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 422
    :pswitch_1
    if-ltz p1, :cond_6

    if-ge p1, v0, :cond_6

    .line 423
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 424
    :cond_6
    if-lt p1, v0, :cond_7

    if-ge p1, v2, :cond_7

    .line 425
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 426
    :cond_7
    if-lt p1, v2, :cond_8

    if-ge p1, v3, :cond_8

    .line 427
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 428
    :cond_8
    if-lt p1, v3, :cond_9

    if-ge p1, v4, :cond_9

    .line 429
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 430
    :cond_9
    if-lt p1, v4, :cond_a

    const/16 v0, 0x32

    if-ge p1, v0, :cond_a

    .line 431
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto :goto_0

    .line 432
    :cond_a
    const/16 v0, 0x32

    if-lt p1, v0, :cond_b

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_b

    .line 433
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto/16 :goto_0

    .line 435
    :cond_b
    sput-boolean v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mRemoveSpot:Z

    goto/16 :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static findProperSamllFace(II)I
    .locals 5
    .param p0, "sex"    # I
    .param p1, "age"    # I

    .prologue
    const/16 v4, 0x1e

    const/16 v3, 0x14

    const/4 v2, 0x0

    const/16 v0, 0xa

    const/16 v1, 0xf

    .line 177
    packed-switch p0, :pswitch_data_0

    .line 217
    :goto_0
    const-string v0, "FaceBeautyUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSamllFace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    return v0

    .line 179
    :pswitch_0
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 180
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 181
    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p1, v3, :cond_1

    .line 182
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 183
    :cond_1
    if-lt p1, v3, :cond_2

    if-ge p1, v4, :cond_2

    .line 184
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 185
    :cond_2
    if-lt p1, v4, :cond_3

    const/16 v0, 0x28

    if-ge p1, v0, :cond_3

    .line 186
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 187
    :cond_3
    const/16 v0, 0x28

    if-lt p1, v0, :cond_4

    const/16 v0, 0x32

    if-ge p1, v0, :cond_4

    .line 188
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 189
    :cond_4
    const/16 v0, 0x32

    if-lt p1, v0, :cond_5

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_5

    .line 190
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 192
    :cond_5
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 197
    :pswitch_1
    if-ltz p1, :cond_6

    if-ge p1, v0, :cond_6

    .line 198
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 199
    :cond_6
    if-lt p1, v0, :cond_7

    if-ge p1, v3, :cond_7

    .line 200
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 201
    :cond_7
    if-lt p1, v3, :cond_8

    if-ge p1, v4, :cond_8

    .line 202
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 203
    :cond_8
    if-lt p1, v4, :cond_9

    const/16 v0, 0x28

    if-ge p1, v0, :cond_9

    .line 204
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 205
    :cond_9
    const/16 v0, 0x28

    if-lt p1, v0, :cond_a

    const/16 v0, 0x32

    if-ge p1, v0, :cond_a

    .line 206
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto :goto_0

    .line 207
    :cond_a
    const/16 v0, 0x32

    if-lt p1, v0, :cond_b

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_b

    .line 208
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto/16 :goto_0

    .line 210
    :cond_b
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSamllFace:I

    goto/16 :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static findProperSoften(II)I
    .locals 5
    .param p0, "sex"    # I
    .param p1, "age"    # I

    .prologue
    const/16 v4, 0xa

    const/16 v0, 0x14

    const/16 v3, 0x32

    const/16 v2, 0x1e

    const/16 v1, 0x28

    .line 81
    packed-switch p0, :pswitch_data_0

    .line 118
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 119
    sput v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    .line 124
    :cond_0
    :goto_0
    const-string v0, "FaceBeautyUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSkinSoften = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    return v0

    .line 83
    :pswitch_0
    if-ltz p1, :cond_1

    if-ge p1, v4, :cond_1

    .line 84
    sput v4, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 85
    :cond_1
    if-lt p1, v4, :cond_2

    if-ge p1, v0, :cond_2

    .line 86
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 87
    :cond_2
    if-lt p1, v0, :cond_3

    if-ge p1, v2, :cond_3

    .line 88
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 89
    :cond_3
    if-lt p1, v2, :cond_4

    if-ge p1, v1, :cond_4

    .line 90
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 91
    :cond_4
    if-lt p1, v1, :cond_5

    if-ge p1, v3, :cond_5

    .line 92
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 93
    :cond_5
    if-lt p1, v3, :cond_6

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_6

    .line 94
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 96
    :cond_6
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 101
    :pswitch_1
    if-ltz p1, :cond_7

    if-ge p1, v4, :cond_7

    .line 102
    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 103
    :cond_7
    if-lt p1, v4, :cond_8

    if-ge p1, v0, :cond_8

    .line 104
    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 105
    :cond_8
    if-lt p1, v0, :cond_9

    if-ge p1, v2, :cond_9

    .line 106
    sput v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 107
    :cond_9
    if-lt p1, v2, :cond_a

    if-ge p1, v1, :cond_a

    .line 108
    sput v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 109
    :cond_a
    if-lt p1, v1, :cond_b

    if-ge p1, v3, :cond_b

    .line 110
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 111
    :cond_b
    if-lt p1, v3, :cond_c

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_c

    .line 112
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 114
    :cond_c
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setBeautyLevel(I)V
    .locals 2
    .param p0, "level"    # I

    .prologue
    const/4 v1, 0x0

    .line 40
    sput p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyLevel:I

    .line 42
    sget v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyLevel:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 44
    :pswitch_0
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    .line 45
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 48
    :pswitch_1
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    .line 49
    const/16 v0, 0xe

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 52
    :pswitch_2
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    .line 53
    const/16 v0, 0x1c

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 56
    :pswitch_3
    sput v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    .line 57
    const/16 v0, 0x2a

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 60
    :pswitch_4
    const/16 v0, 0xa

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    .line 61
    const/16 v0, 0x38

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 64
    :pswitch_5
    const/16 v0, 0x14

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    .line 65
    const/16 v0, 0x46

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 68
    :pswitch_6
    const/16 v0, 0x1e

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    .line 69
    const/16 v0, 0x54

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 72
    :pswitch_7
    const/16 v0, 0x28

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    .line 73
    const/16 v0, 0x64

    sput v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
