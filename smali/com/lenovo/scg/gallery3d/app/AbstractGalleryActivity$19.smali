.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$19;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initCloudSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 2892
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$19;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/high16 v10, 0x44800000    # 1024.0f

    .line 2897
    const/4 v5, 0x0

    .local v5, "total":F
    const/4 v6, 0x0

    .local v6, "used":F
    const/4 v4, 0x0

    .line 2900
    .local v4, "surplus":F
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$19;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->init(Landroid/content/Context;)V

    .line 2902
    sget-object v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    invoke-interface {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->getStoreInfo()Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    move-result-object v2

    .line 2903
    .local v2, "info":Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;
    if-eqz v2, :cond_0

    .line 2904
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->getLimitation()J

    move-result-wide v8

    long-to-float v7, v8

    div-float/2addr v7, v10

    div-float/2addr v7, v10

    div-float v5, v7, v10

    .line 2905
    new-instance v7, Ljava/math/BigDecimal;

    float-to-double v8, v5

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    .line 2906
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->getUsage()J

    move-result-wide v8

    long-to-float v7, v8

    div-float/2addr v7, v10

    div-float/2addr v7, v10

    div-float v6, v7, v10

    .line 2907
    new-instance v7, Ljava/math/BigDecimal;

    float-to-double v8, v6

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    .line 2908
    new-instance v7, Ljava/math/BigDecimal;

    sub-float v8, v5, v6

    float-to-double v8, v8

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2915
    .end local v2    # "info":Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2916
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "Cloud storage total size"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2917
    const-string v7, "Cloud storage used size"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2918
    const-string v7, "Cloud storage surplus size"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2920
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$19;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mCLoudHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1600(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;

    move-result-object v7

    const v8, 0x9111

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2921
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2922
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$19;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mCLoudHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1600(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2923
    return-void

    .line 2911
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 2913
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get storage Exception e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
