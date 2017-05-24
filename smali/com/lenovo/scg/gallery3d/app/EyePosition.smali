.class public Lcom/lenovo/scg/gallery3d/app/EyePosition;
.super Ljava/lang/Object;
.source "EyePosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/EyePosition$1;,
        Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;,
        Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;
    }
.end annotation


# static fields
.field private static final GYROSCOPE_LIMIT:F = 10.0f

.field private static final GYROSCOPE_RESTORE_FACTOR:F = 0.995f

.field private static final GYROSCOPE_SETTLE_DOWN:I = 0xf

.field private static final GYROSCOPE_THRESHOLD:F = 0.15f

.field private static final MAX_VIEW_RANGE:F = 0.5f

.field private static final NOT_STARTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EyePosition"

.field private static final USER_ANGEL:F

.field private static final USER_ANGEL_COS:F

.field private static final USER_ANGEL_SIN:F

.field private static final USER_DISTANCE_METER:F = 0.3f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mGyroscopeCountdown:I

.field private final mLimit:F

.field private mListener:Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;

.field private mPositionListener:Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mStartTime:J

.field private final mUserDistance:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->USER_ANGEL:F

    .line 53
    sget v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->USER_ANGEL:F

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->USER_ANGEL_COS:F

    .line 55
    sget v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->USER_ANGEL:F

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->USER_ANGEL_SIN:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mStartTime:J

    .line 85
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;-><init>(Lcom/lenovo/scg/gallery3d/app/EyePosition;Lcom/lenovo/scg/gallery3d/app/EyePosition$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mPositionListener:Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    .line 90
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mListener:Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;

    .line 92
    const v1, 0x3e99999a    # 0.3f

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    .line 93
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mLimit:F

    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 96
    .local v0, "wManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mDisplay:Landroid/view/Display;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/EyePosition;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/EyePosition;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->onGyroscopeChanged(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/EyePosition;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/EyePosition;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->onAccelerometerChanged(FFF)V

    return-void
.end method

.method private onAccelerometerChanged(FFF)V
    .locals 15
    .param p1, "gx"    # F
    .param p2, "gy"    # F
    .param p3, "gz"    # F

    .prologue
    .line 133
    move/from16 v8, p1

    .local v8, "x":F
    move/from16 v9, p2

    .local v9, "y":F
    move/from16 v10, p3

    .line 135
    .local v10, "z":F
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 150
    :goto_0
    mul-float v11, v8, v8

    mul-float v12, v9, v9

    add-float/2addr v11, v12

    mul-float v12, v10, v10

    add-float v4, v11, v12

    .line 151
    .local v4, "temp":F
    neg-float v11, v9

    div-float v3, v11, v4

    .line 153
    .local v3, "t":F
    mul-float v5, v3, v8

    .line 154
    .local v5, "tx":F
    const/high16 v11, -0x40800000    # -1.0f

    mul-float v12, v3, v9

    add-float v6, v11, v12

    .line 155
    .local v6, "ty":F
    mul-float v7, v3, v10

    .line 157
    .local v7, "tz":F
    mul-float v11, v5, v5

    mul-float v12, v6, v6

    add-float/2addr v11, v12

    mul-float v12, v7, v7

    add-float/2addr v11, v12

    invoke-static {v11}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 158
    .local v2, "length":F
    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    .line 160
    .local v1, "glength":F
    sget v11, Lcom/lenovo/scg/gallery3d/app/EyePosition;->USER_ANGEL_COS:F

    mul-float/2addr v11, v8

    div-float/2addr v11, v1

    sget v12, Lcom/lenovo/scg/gallery3d/app/EyePosition;->USER_ANGEL_SIN:F

    mul-float/2addr v12, v5

    div-float/2addr v12, v2

    add-float/2addr v11, v12

    iget v12, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mLimit:F

    neg-float v12, v12

    iget v13, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mLimit:F

    invoke-static {v11, v12, v13}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v11

    iput v11, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    .line 161
    sget v11, Lcom/lenovo/scg/gallery3d/app/EyePosition;->USER_ANGEL_COS:F

    mul-float/2addr v11, v9

    div-float/2addr v11, v1

    sget v12, Lcom/lenovo/scg/gallery3d/app/EyePosition;->USER_ANGEL_SIN:F

    mul-float/2addr v12, v6

    div-float/2addr v12, v2

    add-float/2addr v11, v12

    iget v12, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mLimit:F

    neg-float v12, v12

    iget v13, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mLimit:F

    invoke-static {v11, v12, v13}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v11

    neg-float v11, v11

    iput v11, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    .line 162
    iget v11, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    iget v12, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    iget v13, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    iget v13, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    invoke-static {v11}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v11

    neg-float v11, v11

    iput v11, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    .line 163
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mListener:Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;

    iget v12, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    iget v13, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    iget v14, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    invoke-interface {v11, v12, v13, v14}, Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 164
    return-void

    .line 137
    .end local v1    # "glength":F
    .end local v2    # "length":F
    .end local v3    # "t":F
    .end local v4    # "temp":F
    .end local v5    # "tx":F
    .end local v6    # "ty":F
    .end local v7    # "tz":F
    :pswitch_0
    move/from16 v0, p2

    neg-float v8, v0

    .line 138
    move/from16 v9, p1

    .line 139
    goto :goto_0

    .line 141
    :pswitch_1
    move/from16 v0, p1

    neg-float v8, v0

    .line 142
    move/from16 v0, p2

    neg-float v9, v0

    .line 143
    goto/16 :goto_0

    .line 145
    :pswitch_2
    move/from16 v8, p2

    .line 146
    move/from16 v0, p1

    neg-float v9, v0

    goto/16 :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onGyroscopeChanged(FFF)V
    .locals 18
    .param p1, "gx"    # F
    .param p2, "gy"    # F
    .param p3, "gz"    # F

    .prologue
    .line 167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 168
    .local v4, "now":J
    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-lez v9, :cond_3

    move/from16 v10, p1

    :goto_0
    const/4 v9, 0x0

    cmpl-float v9, p2, v9

    if-lez v9, :cond_4

    move/from16 v9, p2

    :goto_1
    add-float v2, v10, v9

    .line 169
    .local v2, "distance":F
    const v9, 0x3e19999a    # 0.15f

    cmpg-float v9, v2, v9

    if-ltz v9, :cond_0

    const/high16 v9, 0x41200000    # 10.0f

    cmpl-float v9, v2, v9

    if-gtz v9, :cond_0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    if-lez v9, :cond_5

    .line 170
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    .line 171
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mStartTime:J

    .line 172
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    const/high16 v10, 0x41a00000    # 20.0f

    div-float v3, v9, v10

    .line 173
    .local v3, "limit":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    cmpl-float v9, v9, v3

    if-gtz v9, :cond_1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    neg-float v10, v3

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    cmpl-float v9, v9, v3

    if-gtz v9, :cond_1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    neg-float v10, v3

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 174
    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    const v10, 0x3f7eb852    # 0.995f

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    .line 175
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    const v10, 0x3f7eb852    # 0.995f

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    .line 176
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    neg-double v10, v10

    double-to-float v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    .line 177
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mListener:Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    invoke-interface {v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 206
    .end local v3    # "limit":F
    :cond_2
    :goto_2
    return-void

    .line 168
    .end local v2    # "distance":F
    :cond_3
    move/from16 v0, p1

    neg-float v9, v0

    move v10, v9

    goto/16 :goto_0

    :cond_4
    move/from16 v0, p2

    neg-float v9, v0

    goto/16 :goto_1

    .line 182
    .restart local v2    # "distance":F
    :cond_5
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mStartTime:J

    sub-long v10, v4, v10

    long-to-float v9, v10

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    neg-float v10, v10

    mul-float v6, v9, v10

    .line 183
    .local v6, "t":F
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mStartTime:J

    .line 185
    move/from16 v0, p2

    neg-float v7, v0

    .local v7, "x":F
    move/from16 v0, p1

    neg-float v8, v0

    .line 186
    .local v8, "y":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 201
    :goto_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    float-to-double v10, v9

    mul-float v9, v7, v6

    float-to-double v12, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    float-to-double v14, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mLimit:F

    neg-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mLimit:F

    invoke-static {v9, v10, v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v9

    const v10, 0x3f7eb852    # 0.995f

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    .line 202
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    float-to-double v10, v9

    mul-float v9, v8, v6

    float-to-double v12, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    float-to-double v14, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mLimit:F

    neg-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mLimit:F

    invoke-static {v9, v10, v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v9

    const v10, 0x3f7eb852    # 0.995f

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    .line 204
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v9

    neg-float v9, v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    .line 205
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mListener:Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    invoke-interface {v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    goto/16 :goto_2

    .line 188
    :pswitch_0
    move/from16 v0, p1

    neg-float v7, v0

    .line 189
    move/from16 v8, p2

    .line 190
    goto/16 :goto_3

    .line 192
    :pswitch_1
    move/from16 v7, p2

    .line 193
    move/from16 v8, p1

    .line 194
    goto/16 :goto_3

    .line 196
    :pswitch_2
    move/from16 v7, p1

    .line 197
    move/from16 v0, p2

    neg-float v8, v0

    goto/16 :goto_3

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public pause()V
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 231
    .local v0, "sManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mPositionListener:Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 233
    .end local v0    # "sManager":Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method

.method public resetPosition()V
    .locals 4

    .prologue
    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mStartTime:J

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    .line 117
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    neg-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mListener:Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 119
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 236
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 238
    .local v0, "sManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mPositionListener:Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 241
    .end local v0    # "sManager":Landroid/hardware/SensorManager;
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mStartTime:J

    .line 242
    const/16 v1, 0xf

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    .line 243
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    .line 244
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mUserDistance:F

    neg-float v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    .line 245
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mListener:Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mX:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mY:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition;->mZ:F

    invoke-interface {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 246
    return-void
.end method
