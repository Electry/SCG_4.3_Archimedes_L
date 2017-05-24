.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;
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
    .line 105
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "photoOutsideUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mSharedPhotoUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getOutsideUrl()Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_0
    :goto_0
    const-string v3, "HWJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "photoOutsideUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v3, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onGetOutsideUrlFinished(Ljava/lang/String;)V

    .line 147
    :cond_1
    :goto_1
    return-void

    .line 115
    :cond_2
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mOutsideInfoList:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mOutsideInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 118
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mOutsideInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 119
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mOutsideInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mOutsideInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mOutsideInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getOutsideUrl()Ljava/lang/String;

    move-result-object v2

    .line 121
    goto :goto_0

    .line 117
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 126
    .end local v1    # "i":I
    :cond_4
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 127
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 128
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 129
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    :try_start_0
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getOutsideUrl()Ljava/lang/String;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->throwErrorInfo(I)V

    .line 134
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    goto/16 :goto_1

    .line 127
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
