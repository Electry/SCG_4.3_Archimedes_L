.class public Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;
.super Ljava/lang/Object;
.source "FrontViewComposeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrontViewComposeManager"

.field private static mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrameImage:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    .line 33
    const-string v0, "FrontViewComposeManager"

    const-string v1, "FrontViewComposeManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-class v1, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public compose(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 92
    const-string v14, "FrontViewComposeManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "compose start with sourceBitmap "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " * "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 96
    :cond_0
    const-string v14, "FrontViewComposeManager"

    const-string v15, "compose ERROR: sourceBitmap == null || sourceBitmap.isRecycled()"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/16 p1, 0x0

    .line 226
    .end local p1    # "sourceBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 100
    .restart local p1    # "sourceBitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 101
    :cond_2
    const-string v14, "FrontViewComposeManager"

    const-string v15, "compose ERROR: mFrameImage == null || mFrameImage.isRecycled()"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/16 p1, 0x0

    goto :goto_0

    .line 114
    :cond_3
    const-string v14, "FrontViewComposeManager"

    const-string v15, "compose check done"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 140
    .local v3, "now":Ljava/lang/Long;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 141
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v15, 0x0

    const/16 v16, 0x3

    invoke-direct/range {v14 .. v16}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v2, v14}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 144
    .local v4, "createCanvas":J
    const-string v14, "FrontViewComposeManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "compose draw frame bitmap costs "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v16, v4, v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 149
    .local v8, "drawFramebmp":J
    const-string v14, "FrontViewComposeManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "compose draw frame bitmap costs "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v8, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 157
    .local v10, "drawPreivewbmp":J
    const-string v14, "FrontViewComposeManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "compose draw preivew bitmap costs "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v10, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 162
    .local v6, "drawBrandbmp":J
    const-string v14, "FrontViewComposeManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "compose draw brand bitmap costs "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v6, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/16 v14, 0x1f

    invoke-virtual {v2, v14}, Landroid/graphics/Canvas;->save(I)I

    .line 199
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 201
    .local v12, "saveCanva":J
    const-string v14, "FrontViewComposeManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "compose save canvas and release bitmap costs "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v12, v6

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v14, "FrontViewComposeManager"

    const-string v15, "compose end"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public destory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    const-string v0, "FrontViewComposeManager"

    const-string v1, "destory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    .line 245
    :cond_0
    sput-object v2, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    .line 246
    return-void
.end method

.method public getFrameHeight()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getFrameWidth()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initComposeImages(F)V
    .locals 4
    .param p1, "scaleValue"    # F

    .prologue
    .line 46
    const-string v1, "FrontViewComposeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initComposeImages scaleValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 50
    const v0, 0x7f020068

    .line 51
    .local v0, "frameId":I
    const-string v1, "FrontViewComposeManager"

    const-string v2, "best_live_frame_small"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    .line 64
    const-string v1, "FrontViewComposeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initComposeImages mFrameImage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->mFrameImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 52
    .end local v0    # "frameId":I
    :cond_0
    const v1, 0x3faaa993    # 1.3333f

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    .line 53
    const v0, 0x7f020067

    .line 54
    .restart local v0    # "frameId":I
    const-string v1, "FrontViewComposeManager"

    const-string v2, "best_live_frame_middle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    .end local v0    # "frameId":I
    :cond_1
    const v0, 0x7f020066

    .line 57
    .restart local v0    # "frameId":I
    const-string v1, "FrontViewComposeManager"

    const-string v2, "best_live_frame_big"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
