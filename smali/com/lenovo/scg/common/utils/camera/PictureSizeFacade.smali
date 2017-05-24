.class public Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;
.super Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade;
.source "PictureSizeFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade$1;
    }
.end annotation


# static fields
.field private static sSupportPictureSizes_4Camera0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private static sSupportPictureSizes_4Camera1:Ljava/util/List;
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
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera0:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade;-><init>()V

    .line 146
    return-void
.end method

.method public static floatEqual(FF)Z
    .locals 6
    .param p0, "value1"    # F
    .param p1, "value2"    # F

    .prologue
    .line 227
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    .line 228
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

    .line 229
    const/4 v2, 0x1

    .line 231
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getPictureSizeByString(Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .locals 5
    .param p0, "mSizeString"    # Ljava/lang/String;

    .prologue
    .line 152
    const-class v3, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 153
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 154
    .local v1, "mSize":Landroid/hardware/Camera$Size;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    .end local v1    # "mSize":Landroid/hardware/Camera$Size;
    :goto_1
    monitor-exit v3

    return-object v1

    .line 152
    .restart local v1    # "mSize":Landroid/hardware/Camera$Size;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "mSize":Landroid/hardware/Camera$Size;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getPictureSizes16_9(I)Ljava/util/List;
    .locals 12
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
    .line 295
    const-class v6, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSupportPictureSizes(I)Ljava/util/List;

    move-result-object v3

    .line 296
    .local v3, "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 297
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

    .line 298
    .local v2, "mSize":Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v5, v7

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    div-float v1, v5, v7

    .line 299
    .local v1, "m16v9":F
    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4031000000000000L    # 17.0

    cmpl-double v5, v8, v10

    if-nez v5, :cond_0

    .line 300
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 295
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "m16v9":F
    .end local v2    # "mSize":Landroid/hardware/Camera$Size;
    .end local v3    # "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 311
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v4    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    monitor-exit v6

    return-object v4
.end method

.method public static declared-synchronized getPictureSizes4_3(I)Ljava/util/List;
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
    .line 243
    const-class v6, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSupportPictureSizes(I)Ljava/util/List;

    move-result-object v3

    .line 244
    .local v3, "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 245
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

    .line 246
    .local v2, "mSize":Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v5, v7

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    div-float v1, v5, v7

    .line 247
    .local v1, "m4v3":F
    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    const/16 v7, 0xd

    if-ne v5, v7, :cond_0

    .line 248
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 243
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "m4v3":F
    .end local v2    # "mSize":Landroid/hardware/Camera$Size;
    .end local v3    # "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 258
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v4    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    monitor-exit v6

    return-object v4
.end method

.method public static declared-synchronized getPictureSizes5_3(I)Ljava/util/List;
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
    .line 272
    const-class v7, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;

    monitor-enter v7

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSupportPictureSizes(I)Ljava/util/List;

    move-result-object v2

    .line 273
    .local v2, "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
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

    .line 275
    .local v1, "mSize":Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    rem-int/lit8 v6, v6, 0x5

    if-nez v6, :cond_0

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    rem-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_0

    .line 276
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    iget v8, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v8, v8

    div-float v4, v6, v8

    .line 277
    .local v4, "value1":F
    const v5, 0x3f19999a    # 0.6f

    .line 278
    .local v5, "value5_3":F
    invoke-static {v4, v5}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->floatEqual(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 279
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 272
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

    .line 283
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v3    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    monitor-exit v7

    return-object v3
.end method

.method public static declared-synchronized getSuitablePictureSizeList(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Ljava/util/List;
    .locals 4
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
    .line 196
    const-class v2, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;

    monitor-enter v2

    const/4 v0, 0x0

    .line 197
    .local v0, "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SizeRatioType:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->ordinal()I

    move-result v3

    aget v1, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 213
    :goto_0
    monitor-exit v2

    return-object v0

    .line 199
    :pswitch_0
    :try_start_1
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getPictureSizes4_3(I)Ljava/util/List;

    move-result-object v0

    .line 200
    goto :goto_0

    .line 203
    :pswitch_1
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getPictureSizes5_3(I)Ljava/util/List;

    move-result-object v0

    .line 204
    goto :goto_0

    .line 207
    :pswitch_2
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getPictureSizes16_9(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 208
    goto :goto_0

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static declared-synchronized getSuitePictureSizeBelowMaxWidth(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;I)Landroid/hardware/Camera$Size;
    .locals 8
    .param p0, "mCameraID"    # I
    .param p1, "type"    # Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    .param p2, "maxWidth"    # I

    .prologue
    const/4 v3, 0x0

    .line 170
    const-class v4, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuitablePictureSizeList(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 171
    .local v1, "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v1, :cond_0

    move-object v2, v3

    .line 182
    :goto_0
    monitor-exit v4

    return-object v2

    .line 175
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

    .line 176
    .local v2, "tmp":Landroid/hardware/Camera$Size;
    const-string v5, "getSuitePictureSizeBelowMaxWidth: "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    if-gt v5, p2, :cond_1

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    if-gt v5, p2, :cond_1

    .line 178
    const-string v3, "getSuitePictureSizeBelowMaxWidth--> return Size: "

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

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v2    # "tmp":Landroid/hardware/Camera$Size;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_2
    move-object v2, v3

    .line 182
    goto :goto_0
.end method

.method public static declared-synchronized getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;
    .locals 11
    .param p0, "mCameraID"    # I
    .param p1, "type"    # Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    .param p2, "mSuit"    # Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .prologue
    .line 45
    const-class v9, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;

    monitor-enter v9

    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuitablePictureSizeList(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 46
    .local v6, "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v6, :cond_1

    .line 47
    const/4 v4, 0x0

    .line 148
    :cond_0
    :goto_0
    monitor-exit v9

    return-object v4

    .line 49
    :cond_1
    const/4 v5, 0x0

    .line 50
    .local v5, "mSuiteSize":Landroid/hardware/Camera$Size;
    :try_start_1
    sget-object v8, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I

    invoke-virtual {p2}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_0

    :cond_2
    :goto_1
    move-object v4, v5

    .line 148
    goto :goto_0

    .line 52
    :pswitch_0
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "mSuiteSize":Landroid/hardware/Camera$Size;
    check-cast v5, Landroid/hardware/Camera$Size;

    .line 53
    .restart local v5    # "mSuiteSize":Landroid/hardware/Camera$Size;
    goto :goto_1

    .line 58
    :pswitch_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 59
    .local v1, "mLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 60
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 62
    .local v7, "mTempSize":Landroid/hardware/Camera$Size;
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    const/16 v10, 0x1300

    if-ne v8, v10, :cond_3

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    const/16 v10, 0xab0

    if-ne v8, v10, :cond_3

    .line 63
    move-object v5, v7

    .line 59
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 67
    .end local v7    # "mTempSize":Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v5, :cond_2

    .line 68
    const/16 v8, 0x1300

    invoke-static {p0, p1, v8}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuitePictureSizeBelowMaxWidth(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;I)Landroid/hardware/Camera$Size;

    move-result-object v5

    goto :goto_1

    .line 94
    .end local v0    # "i":I
    .end local v1    # "mLen":I
    :pswitch_2
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 96
    .local v2, "mRect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v8, v10, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 98
    .local v3, "mScreenHeight":I
    :goto_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 99
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 100
    .local v4, "mSize":Landroid/hardware/Camera$Size;
    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    if-le v8, v3, :cond_0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 96
    .end local v0    # "i":I
    .end local v3    # "mScreenHeight":I
    .end local v4    # "mSize":Landroid/hardware/Camera$Size;
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    goto :goto_3

    .line 109
    .end local v2    # "mRect":Landroid/graphics/Rect;
    :pswitch_3
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "mSuiteSize":Landroid/hardware/Camera$Size;
    check-cast v5, Landroid/hardware/Camera$Size;

    .line 110
    .restart local v5    # "mSuiteSize":Landroid/hardware/Camera$Size;
    goto :goto_1

    .line 115
    :pswitch_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 116
    .restart local v1    # "mLen":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v1, :cond_7

    .line 117
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 118
    .restart local v7    # "mTempSize":Landroid/hardware/Camera$Size;
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    const/16 v10, 0x780

    if-ne v8, v10, :cond_6

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    const/16 v10, 0x438

    if-ne v8, v10, :cond_6

    .line 119
    move-object v5, v7

    .line 116
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 123
    .end local v7    # "mTempSize":Landroid/hardware/Camera$Size;
    :cond_7
    if-nez v5, :cond_2

    .line 124
    const/16 v8, 0x780

    invoke-static {p0, p1, v8}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuitePictureSizeBelowMaxWidth(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;I)Landroid/hardware/Camera$Size;

    move-result-object v5

    goto/16 :goto_1

    .line 131
    .end local v0    # "i":I
    .end local v1    # "mLen":I
    :pswitch_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 132
    .restart local v1    # "mLen":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v1, :cond_9

    .line 133
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 134
    .restart local v7    # "mTempSize":Landroid/hardware/Camera$Size;
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    const/16 v10, 0x438

    if-ne v8, v10, :cond_8

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    const/16 v10, 0x2d0

    if-ne v8, v10, :cond_8

    .line 135
    move-object v5, v7

    .line 132
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 139
    .end local v7    # "mTempSize":Landroid/hardware/Camera$Size;
    :cond_9
    if-nez v5, :cond_2

    .line 140
    const/16 v8, 0x438

    invoke-static {p0, p1, v8}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuitePictureSizeBelowMaxWidth(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;I)Landroid/hardware/Camera$Size;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    goto/16 :goto_1

    .line 45
    .end local v0    # "i":I
    .end local v1    # "mLen":I
    .end local v5    # "mSuiteSize":Landroid/hardware/Camera$Size;
    .end local v6    # "mSuiteSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static declared-synchronized getSupportPictureSizes(I)Ljava/util/List;
    .locals 2
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
    .line 324
    const-class v1, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;

    monitor-enter v1

    packed-switch p0, :pswitch_data_0

    .line 334
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera0:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    .line 326
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera0:Ljava/util/List;

    goto :goto_0

    .line 330
    :pswitch_1
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera1:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized setSupportPictureSizes(Ljava/util/List;I)V
    .locals 7
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
    .line 347
    .local p0, "mSupportPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-class v4, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;

    monitor-enter v4

    packed-switch p1, :pswitch_data_0

    .line 385
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 349
    :pswitch_0
    if-eqz p0, :cond_0

    .line 350
    :try_start_0
    sget-object v3, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 351
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 352
    .local v2, "mSize":Landroid/hardware/Camera$Size;
    sget-object v3, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v3, "SUPPORT_PSIZE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 347
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mSize":Landroid/hardware/Camera$Size;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 355
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera0:Ljava/util/List;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/ListSort;->SortSize(Ljava/util/List;)V

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, "isDebug":Z
    if-eqz v1, :cond_0

    .line 360
    sget-object v3, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 361
    .restart local v2    # "mSize":Landroid/hardware/Camera$Size;
    const-string v3, "SUPPORT_PSIZE-Sort:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 370
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isDebug":Z
    .end local v2    # "mSize":Landroid/hardware/Camera$Size;
    :pswitch_1
    if-eqz p0, :cond_0

    .line 371
    sget-object v3, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera1:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 372
    sget-object v3, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera1:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 373
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 374
    .restart local v2    # "mSize":Landroid/hardware/Camera$Size;
    sget-object v3, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera1:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v3, "SUPPORT_PSIZE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 377
    .end local v2    # "mSize":Landroid/hardware/Camera$Size;
    :cond_2
    sget-object v3, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->sSupportPictureSizes_4Camera1:Ljava/util/List;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/ListSort;->SortSize(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
