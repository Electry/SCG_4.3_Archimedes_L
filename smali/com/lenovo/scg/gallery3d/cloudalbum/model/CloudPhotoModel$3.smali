.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;
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
    .line 161
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "albumId":Ljava/lang/String;
    sget-object v4, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 167
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    sget-object v4, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 168
    sget-object v4, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 171
    :try_start_0
    sget-object v4, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->delete()Z
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v2    # "j":I
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 184
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 185
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentId()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updatePhotoInfoDB(Ljava/lang/String;)Z

    .line 191
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 192
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 193
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 194
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 199
    .end local v3    # "k":I
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v4, :cond_6

    .line 200
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoId:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->delPhotoDataFromDB(Ljava/lang/String;)Z

    .line 201
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 202
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 203
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v5, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updatePhotoCountDB(Ljava/lang/String;J)Z

    .line 209
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 211
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmPhotoList(Ljava/util/List;)V

    .line 212
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v4, :cond_7

    .line 213
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onDeleteFinished(Ljava/util/List;I)V

    .line 215
    :cond_7
    :goto_3
    return-void

    .line 172
    .restart local v2    # "j":I
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->throwErrorInfo(I)V

    .line 174
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    goto :goto_3

    .line 167
    .end local v1    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 192
    .end local v2    # "j":I
    .restart local v3    # "k":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 205
    .end local v3    # "k":I
    :cond_a
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updatePhotoInfoDB(Ljava/lang/String;)Z

    goto :goto_2
.end method
