.class Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;
.super Landroid/view/View;
.source "CaptureAnimManager1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/animation/CaptureAnimManager1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationView"
.end annotation


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mChangeAlphaTime:I

.field private mChangeBigTime:I

.field private mChangeSmallTime:I

.field private final mMaxAlpha:I

.field private mMaxCircleSize:I

.field private final mMidAlpha:I

.field private final mMinAlpha:I

.field private mMinCircleSize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mStartAnimTime:J

.field final synthetic this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 159
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    .line 160
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 112
    const/16 v0, 0xb4

    iput v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    .line 113
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeAlphaTime:I

    .line 114
    const/16 v0, 0x5a

    iput v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeBigTime:I

    .line 117
    const/16 v0, 0xaf

    iput v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMidAlpha:I

    .line 118
    const/16 v0, 0xd7

    iput v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMaxAlpha:I

    .line 119
    const/16 v0, 0x32

    iput v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMinAlpha:I

    .line 122
    iput v1, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMaxCircleSize:I

    .line 123
    iput v1, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMinCircleSize:I

    .line 126
    iput v1, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mCenterX:I

    .line 127
    iput v1, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mCenterY:I

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mPaint:Landroid/graphics/Paint;

    .line 162
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->setWillNotDraw(Z)V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->init(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->initAnimTime()V

    return-void
.end method

.method private init(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 132
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCenter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput p1, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mCenterX:I

    .line 134
    iput p2, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mCenterY:I

    .line 135
    if-le p1, p2, :cond_0

    .end local p2    # "y":I
    :goto_0
    iput p2, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMaxCircleSize:I

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 138
    return-void

    .restart local p2    # "y":I
    :cond_0
    move p2, p1

    .line 135
    goto :goto_0
.end method

.method private initAnimTime()V
    .locals 6

    .prologue
    const/16 v5, 0xb4

    const/16 v4, 0x64

    const/16 v3, 0x5a

    .line 141
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------mIsZSD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    # getter for: Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mIsZSD:Z
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->access$200(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    # getter for: Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mIsZSD:Z
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->access$200(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iput v5, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    .line 147
    iput v4, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeAlphaTime:I

    .line 148
    iput v3, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeBigTime:I

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    iput v5, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    .line 154
    iput v4, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeAlphaTime:I

    .line 155
    iput v3, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeBigTime:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x43250000    # 165.0f

    .line 173
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 174
    invoke-virtual {p0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 219
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 178
    .local v2, "currentTime":J
    iget-wide v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mStartAnimTime:J

    sub-long v4, v2, v6

    .line 179
    .local v4, "time":J
    iget-wide v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mStartAnimTime:J

    sub-long v6, v2, v6

    iget v8, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeAlphaTime:I

    iget v9, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeBigTime:I

    add-int/2addr v8, v9

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 180
    iget-object v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    # getter for: Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->access$300(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 183
    :cond_1
    const/4 v1, 0x0

    .line 184
    .local v1, "size":I
    const/4 v0, 0x0

    .line 185
    .local v0, "alpha":I
    iget v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_5

    .line 186
    iget v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMaxCircleSize:I

    int-to-float v6, v6

    long-to-float v7, v4

    iget v8, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMaxCircleSize:I

    iget v9, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMinCircleSize:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 187
    const/high16 v6, 0x42480000    # 50.0f

    long-to-float v7, v4

    iget v8, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    iget v9, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeAlphaTime:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v8, v12, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 196
    :cond_2
    :goto_1
    if-gez v0, :cond_7

    .line 197
    const/4 v0, 0x0

    .line 202
    :cond_3
    :goto_2
    iget v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMinCircleSize:I

    if-ge v1, v6, :cond_8

    .line 203
    iget v1, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMinCircleSize:I

    .line 208
    :cond_4
    :goto_3
    const-string v6, "jiaxiaowei"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "draw() : alpha = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v6, "jiaxiaowei"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "draw() : size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p1, v0, v13, v13, v13}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 215
    iget v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mCenterX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mCenterY:I

    int-to-float v7, v7

    int-to-float v8, v1

    iget-object v9, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 218
    iget-object v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    # getter for: Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->access$300(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 188
    :cond_5
    iget v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    iget v7, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeAlphaTime:I

    add-int/2addr v6, v7

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_6

    .line 189
    const/4 v1, 0x0

    .line 190
    const/high16 v6, 0x432f0000    # 175.0f

    iget v7, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    int-to-long v8, v7

    sub-long v8, v4, v8

    long-to-float v7, v8

    iget v8, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeAlphaTime:I

    iget v9, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v8, v12, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v0, v6

    goto :goto_1

    .line 191
    :cond_6
    iget v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    iget v7, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeAlphaTime:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeBigTime:I

    add-int/2addr v6, v7

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_2

    .line 192
    iget v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMinCircleSize:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    int-to-long v8, v7

    sub-long v8, v4, v8

    iget v7, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeAlphaTime:I

    int-to-long v10, v7

    sub-long/2addr v8, v10

    long-to-float v7, v8

    iget v8, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMaxCircleSize:I

    iget v9, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMinCircleSize:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeBigTime:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 193
    const/high16 v6, 0x43570000    # 215.0f

    iget v7, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeSmallTime:I

    int-to-long v8, v7

    sub-long v8, v4, v8

    iget v7, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeAlphaTime:I

    int-to-long v10, v7

    sub-long/2addr v8, v10

    long-to-float v7, v8

    iget v8, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mChangeBigTime:I

    int-to-float v8, v8

    div-float v8, v12, v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v0, v6

    goto/16 :goto_1

    .line 198
    :cond_7
    const/16 v6, 0xd7

    if-le v0, v6, :cond_3

    .line 199
    const/16 v0, 0xd7

    goto/16 :goto_2

    .line 204
    :cond_8
    iget v6, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMaxCircleSize:I

    if-le v1, v6, :cond_4

    .line 205
    iget v1, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mMaxCircleSize:I

    goto/16 :goto_3
.end method

.method public startAnim()V
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->mStartAnimTime:J

    .line 167
    invoke-virtual {p0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->invalidate()V

    .line 168
    return-void
.end method
