.class public Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;
.super Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade;
.source "PreviewSizeFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;
    }
.end annotation


# static fields
.field private static sSupportPreviewSizesCamera0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private static sSupportPreviewSizesCamera1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera0:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade;-><init>()V

    .line 159
    return-void
.end method

.method private static floatEqual(FF)Z
    .locals 6
    .param p0, "value1"    # F
    .param p1, "value2"    # F

    .prologue
    .line 293
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    .line 294
    .local v0, "exp":D
    sub-float v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double/2addr v4, v0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    sub-float v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    .line 295
    const/4 v2, 0x1

    .line 297
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getPSizes16_9(I)Ljava/util/List;
    .locals 10
    .param p0, "mCameraID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    const-class v6, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSupportPreviewSizes(I)Ljava/util/List;

    move-result-object v3

    .line 373
    .local v3, "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v4, "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 375
    .local v2, "mSize":Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v5, v7

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    div-float v1, v5, v7

    .line 377
    .local v1, "m16v9":F
    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    const/16 v7, 0x11

    if-ne v5, v7, :cond_0

    .line 378
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 372
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "m16v9":F
    .end local v2    # "mSize":Landroid/hardware/Camera$Size;
    .end local v3    # "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 388
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v4    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    monitor-exit v6

    return-object v4
.end method

.method public static declared-synchronized getPSizes4_3(I)Ljava/util/List;
    .locals 10
    .param p0, "mCameraID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    const-class v6, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSupportPreviewSizes(I)Ljava/util/List;

    move-result-object v3

    .line 264
    .local v3, "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v4, "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 266
    .local v2, "mSize":Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v5, v7

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    div-float v1, v5, v7

    .line 268
    .local v1, "is4v3":F
    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    const/16 v7, 0xd

    if-ne v5, v7, :cond_0

    .line 269
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "is4v3":F
    .end local v2    # "mSize":Landroid/hardware/Camera$Size;
    .end local v3    # "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 279
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v4    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    monitor-exit v6

    return-object v4
.end method

.method public static declared-synchronized getPSizes5_3(I)Ljava/util/List;
    .locals 9
    .param p0, "mCameraID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    const-class v7, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;

    monitor-enter v7

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSupportPreviewSizes(I)Ljava/util/List;

    move-result-object v2

    .line 310
    .local v2, "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v3, "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 312
    .local v1, "mSize":Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    rem-int/lit8 v6, v6, 0x5

    if-nez v6, :cond_0

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    rem-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_0

    .line 313
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    iget v8, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v8, v8

    div-float v4, v6, v8

    .line 314
    .local v4, "value1":F
    const v5, 0x3f19999a    # 0.6f

    .line 315
    .local v5, "value5_3":F
    invoke-static {v4, v5}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->floatEqual(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 316
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 309
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mSize":Landroid/hardware/Camera$Size;
    .end local v2    # "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v3    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4    # "value1":F
    .end local v5    # "value5_3":F
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 320
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v3    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    monitor-exit v7

    return-object v3
.end method

.method public static getPreviewSizeByString(Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .locals 4
    .param p0, "mSizeString"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 191
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 192
    .local v1, "mSize":Landroid/hardware/Camera$Size;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    .end local v1    # "mSize":Landroid/hardware/Camera$Size;
    :goto_1
    return-object v1

    .line 190
    .restart local v1    # "mSize":Landroid/hardware/Camera$Size;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "mSize":Landroid/hardware/Camera$Size;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getSuitablePreviewSizeList(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Ljava/util/List;
    .locals 5
    .param p0, "mCameraID"    # I
    .param p1, "type"    # Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    const-class v3, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;

    monitor-enter v3

    const/4 v0, 0x0

    .line 233
    .local v0, "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :try_start_0
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SizeRatioType:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->ordinal()I

    move-result v4

    aget v2, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    move-object v1, v0

    .line 251
    .end local v0    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .local v1, "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_0
    monitor-exit v3

    return-object v1

    .line 235
    .end local v1    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v0    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :pswitch_0
    :try_start_1
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getPSizes4_3(I)Ljava/util/List;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 251
    .end local v0    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v1    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    goto :goto_0

    .line 239
    .end local v1    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v0    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :pswitch_1
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getPSizes5_3(I)Ljava/util/List;

    move-result-object v0

    .line 240
    goto :goto_1

    .line 243
    :pswitch_2
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getPSizes16_9(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 244
    goto :goto_1

    .line 232
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getSuitePreviewSizeBelowMaxHeight(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;I)Landroid/hardware/Camera$Size;
    .locals 7
    .param p0, "mCameraID"    # I
    .param p1, "type"    # Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    .param p2, "maxHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-static {p0, p1}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuitablePreviewSizeList(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v1, :cond_0

    move-object v2, v3

    .line 178
    :goto_0
    return-object v2

    .line 171
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 172
    .local v2, "tmp":Landroid/hardware/Camera$Size;
    const-string v4, "getSuitePictureSizeBelowMaxWidth: "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    if-gt v4, p2, :cond_1

    .line 174
    const-string v3, "getSuitePictureSizeBelowMaxWidth--> return Size: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "tmp":Landroid/hardware/Camera$Size;
    :cond_2
    move-object v2, v3

    .line 178
    goto :goto_0
.end method

.method public static declared-synchronized getSuitePreviewSizeBelowMaxWidth(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;I)Landroid/hardware/Camera$Size;
    .locals 6
    .param p0, "mCameraID"    # I
    .param p1, "type"    # Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    .param p2, "maxWidth"    # I

    .prologue
    const/4 v3, 0x0

    .line 209
    const-class v4, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuitablePreviewSizeList(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 210
    .local v1, "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v1, :cond_0

    move-object v2, v3

    .line 219
    :goto_0
    monitor-exit v4

    return-object v2

    .line 214
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 215
    .local v2, "tmp":Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    if-gt v5, p2, :cond_1

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v5, p2, :cond_1

    goto :goto_0

    .end local v2    # "tmp":Landroid/hardware/Camera$Size;
    :cond_2
    move-object v2, v3

    .line 219
    goto :goto_0

    .line 209
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;
    .locals 13
    .param p0, "mCameraID"    # I
    .param p1, "type"    # Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    .param p2, "mSuite"    # Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .prologue
    .line 40
    const-class v10, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;

    monitor-enter v10

    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuitablePreviewSizeList(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 41
    .local v7, "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v7, :cond_1

    .line 42
    const/4 v5, 0x0

    .line 161
    :cond_0
    :goto_0
    monitor-exit v10

    return-object v5

    .line 44
    :cond_1
    const/4 v6, 0x0

    .line 45
    .local v6, "mSuiteSize":Landroid/hardware/Camera$Size;
    :try_start_1
    sget-object v9, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I

    invoke-virtual {p2}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->ordinal()I

    move-result v11

    aget v9, v9, v11

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_1
    move-object v5, v6

    .line 161
    goto :goto_0

    .line 47
    :pswitch_0
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "mSuiteSize":Landroid/hardware/Camera$Size;
    check-cast v6, Landroid/hardware/Camera$Size;

    .line 49
    .restart local v6    # "mSuiteSize":Landroid/hardware/Camera$Size;
    const/4 v1, 0x0

    .line 50
    .local v1, "isDebug":Z
    if-eqz v1, :cond_2

    .line 51
    const/4 v9, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ULTRA_SIZE - Select: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_2

    .line 53
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 54
    .local v5, "mSize":Landroid/hardware/Camera$Size;
    const/4 v9, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ULTRA_SIZE - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 61
    .end local v0    # "i":I
    .end local v1    # "isDebug":Z
    .end local v5    # "mSize":Landroid/hardware/Camera$Size;
    :pswitch_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 63
    .local v3, "mRect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v9, v11, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 65
    .local v4, "mScreenHeight":I
    :goto_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_2

    .line 66
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 67
    .restart local v5    # "mSize":Landroid/hardware/Camera$Size;
    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    if-le v9, v4, :cond_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 63
    .end local v0    # "i":I
    .end local v4    # "mScreenHeight":I
    .end local v5    # "mSize":Landroid/hardware/Camera$Size;
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_3

    .line 76
    .end local v3    # "mRect":Landroid/graphics/Rect;
    :pswitch_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 77
    .local v2, "mLen":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v2, :cond_5

    .line 78
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 79
    .local v8, "mTempSize":Landroid/hardware/Camera$Size;
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v9, v11

    const v11, 0x1fa400

    if-ne v9, v11, :cond_4

    .line 80
    move-object v6, v8

    .line 77
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 84
    .end local v8    # "mTempSize":Landroid/hardware/Camera$Size;
    :cond_5
    if-nez v6, :cond_2

    .line 85
    const/16 v9, 0x438

    invoke-static {p0, p1, v9}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuitePreviewSizeBelowMaxHeight(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;I)Landroid/hardware/Camera$Size;

    move-result-object v6

    goto/16 :goto_1

    .line 98
    .end local v0    # "i":I
    .end local v2    # "mLen":I
    :pswitch_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 99
    .restart local v2    # "mLen":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v2, :cond_7

    .line 100
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 101
    .restart local v8    # "mTempSize":Landroid/hardware/Camera$Size;
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v9, v11

    const v11, 0xbdd80

    if-ne v9, v11, :cond_6

    .line 102
    move-object v6, v8

    .line 99
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 106
    .end local v8    # "mTempSize":Landroid/hardware/Camera$Size;
    :cond_7
    if-nez v6, :cond_2

    .line 107
    const/16 v9, 0x2d0

    invoke-static {p0, p1, v9}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuitePreviewSizeBelowMaxHeight(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;I)Landroid/hardware/Camera$Size;

    move-result-object v6

    goto/16 :goto_1

    .line 116
    .end local v0    # "i":I
    .end local v2    # "mLen":I
    :pswitch_4
    const/4 v9, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "mSuiteSize":Landroid/hardware/Camera$Size;
    check-cast v6, Landroid/hardware/Camera$Size;

    .line 117
    .restart local v6    # "mSuiteSize":Landroid/hardware/Camera$Size;
    goto/16 :goto_1

    .line 123
    :pswitch_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 124
    .restart local v2    # "mLen":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v2, :cond_9

    .line 125
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 126
    .restart local v8    # "mTempSize":Landroid/hardware/Camera$Size;
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    const/16 v11, 0x780

    if-ne v9, v11, :cond_8

    iget v9, v8, Landroid/hardware/Camera$Size;->height:I

    const/16 v11, 0x438

    if-ne v9, v11, :cond_8

    .line 127
    move-object v6, v8

    .line 124
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 131
    .end local v8    # "mTempSize":Landroid/hardware/Camera$Size;
    :cond_9
    if-nez v6, :cond_2

    .line 132
    const/16 v9, 0x438

    invoke-static {p0, p1, v9}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuitePreviewSizeBelowMaxHeight(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;I)Landroid/hardware/Camera$Size;

    move-result-object v6

    goto/16 :goto_1

    .line 139
    .end local v0    # "i":I
    .end local v2    # "mLen":I
    :pswitch_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 140
    .restart local v2    # "mLen":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    if-ge v0, v2, :cond_b

    .line 141
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 142
    .restart local v8    # "mTempSize":Landroid/hardware/Camera$Size;
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    const/16 v11, 0x438

    if-ne v9, v11, :cond_a

    iget v9, v8, Landroid/hardware/Camera$Size;->height:I

    const/16 v11, 0x2d0

    if-ne v9, v11, :cond_a

    .line 143
    move-object v6, v8

    .line 140
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 147
    .end local v8    # "mTempSize":Landroid/hardware/Camera$Size;
    :cond_b
    if-nez v6, :cond_2

    .line 148
    const/16 v9, 0x2d0

    invoke-static {p0, p1, v9}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuitePreviewSizeBelowMaxHeight(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;I)Landroid/hardware/Camera$Size;

    move-result-object v6

    goto/16 :goto_1

    .line 154
    .end local v0    # "i":I
    .end local v2    # "mLen":I
    :pswitch_7
    const-string v9, "352x288"

    invoke-static {v9}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getPreviewSizeByString(Ljava/lang/String;)Landroid/hardware/Camera$Size;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 155
    goto/16 :goto_1

    .line 40
    .end local v6    # "mSuiteSize":Landroid/hardware/Camera$Size;
    .end local v7    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static getSupportPreviewSizes(I)Ljava/util/List;
    .locals 1
    .param p0, "mCameraID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    packed-switch p0, :pswitch_data_0

    .line 408
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera0:Ljava/util/List;

    :goto_0
    return-object v0

    .line 402
    :pswitch_0
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera0:Ljava/util/List;

    goto :goto_0

    .line 405
    :pswitch_1
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera1:Ljava/util/List;

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static is16v9(Landroid/hardware/Camera$Size;)Z
    .locals 4
    .param p0, "mSize"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 355
    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 356
    .local v0, "is16v9":F
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 357
    const/4 v1, 0x1

    .line 359
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static is16v9(Ljava/lang/String;)Z
    .locals 6
    .param p0, "mSize"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 335
    const-string/jumbo v4, "x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "mStrings":[Ljava/lang/String;
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 337
    .local v0, "is16v9":F
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_0

    .line 340
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static is4v3(Landroid/hardware/Camera$Size;)Z
    .locals 4
    .param p0, "mSize"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 345
    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 347
    .local v0, "is4v3":F
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 348
    const/4 v1, 0x1

    .line 351
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static is4v3(Ljava/lang/String;)Z
    .locals 6
    .param p0, "mSize"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 324
    const-string/jumbo v4, "x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "mStrings":[Ljava/lang/String;
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 327
    .local v0, "is4v3":F
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 331
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static setSupportPreviewSizes(Ljava/util/List;I)V
    .locals 5
    .param p1, "mCameraID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "mSupportPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    packed-switch p1, :pswitch_data_0

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 422
    :pswitch_0
    if-eqz p0, :cond_0

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 423
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 424
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 425
    .local v1, "mSize":Landroid/hardware/Camera$Size;
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    const-string v2, "PreviewSizeFacade-->"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 428
    .end local v1    # "mSize":Landroid/hardware/Camera$Size;
    :cond_1
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera0:Ljava/util/List;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/ListSort;->SortSize(Ljava/util/List;)V

    goto :goto_0

    .line 433
    .end local v0    # "i$":Ljava/util/Iterator;
    :pswitch_1
    if-eqz p0, :cond_0

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 434
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 435
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 436
    .restart local v1    # "mSize":Landroid/hardware/Camera$Size;
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera1:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    const-string v2, "PreviewSizeFacade-->Front:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 439
    .end local v1    # "mSize":Landroid/hardware/Camera$Size;
    :cond_2
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->sSupportPreviewSizesCamera1:Ljava/util/List;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/ListSort;->SortSize(Ljava/util/List;)V

    goto/16 :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
