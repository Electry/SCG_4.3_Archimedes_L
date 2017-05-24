.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;
.super Ljava/lang/Object;
.source "CloudPhotoModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 241
    const/4 v6, 0x0

    .line 243
    .local v6, "stg":Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUserId()Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "userId":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 245
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/DefaultPhotoStorageFactory;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;->getPhotoStorage(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 252
    :cond_0
    if-eqz v6, :cond_2

    .line 254
    :try_start_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mSharedPhotoUrl:Ljava/lang/String;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->getInfoByPhoto(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v9

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$302(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    .line 255
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 256
    const-string v8, "HWJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mOutsidePhoto= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getPhotoName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 258
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 263
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 264
    new-instance v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;-><init>()V

    .line 265
    .local v2, "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "photoId":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getPhotoName()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "photoName":Ljava/lang/String;
    const-string v8, "HWJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "photoName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "bigThumbUrl":Ljava/lang/String;
    const/4 v5, 0x0

    .line 270
    .local v5, "smallThumbUrl":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmOutsidePhotoInfo(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;)V

    .line 271
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getOutsideSize()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setSize(J)V

    .line 272
    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoId(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoName(Ljava/lang/String;)V

    .line 274
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentName(Ljava/lang/String;)V

    .line 275
    const-string v8, "HWJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mOutsidePhoto.getAlbumName() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getThubmUrl640()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmBigThumbUrl(Ljava/lang/String;)V

    .line 282
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getThubmUrl200()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmSmallThumbUrl(Ljava/lang/String;)V

    .line 285
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v8, "HWJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPhotosList.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v8, :cond_2

    .line 288
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)I

    move-result v11

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    .end local v0    # "bigThumbUrl":Ljava/lang/String;
    .end local v2    # "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .end local v3    # "photoId":Ljava/lang/String;
    .end local v4    # "photoName":Ljava/lang/String;
    .end local v5    # "smallThumbUrl":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->throwErrorInfo(I)V

    .line 249
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v1    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    .restart local v7    # "userId":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1

    .line 260
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;Ljava/util/List;)Ljava/util/List;
    :try_end_2
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 292
    :catch_1
    move-exception v1

    .line 293
    .restart local v1    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    .line 294
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->throwErrorInfo(I)V

    goto :goto_1
.end method
