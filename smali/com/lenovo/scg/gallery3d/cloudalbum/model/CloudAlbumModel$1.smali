.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;
.super Ljava/lang/Object;
.source "CloudAlbumModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mIsLoadAlbum:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    .line 118
    .local v0, "isNetWorkCon":Z
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->getDBAlbumData()V

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;Ljava/util/List;)Ljava/util/List;

    .line 121
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmPhotoList(Ljava/util/List;)V

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----123 mPhotosList.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v1, "HWJ"

    const-string v2, "----------121----------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v6, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    .line 129
    :cond_0
    if-eqz v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->getAlbumFromNet()V

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ltz v1, :cond_6

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mAlbumThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mIsLoadAlbum:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 136
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_4

    .line 137
    const-string v1, "HWJ"

    const-string v2, "----------136----------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v6, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    .line 173
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v1, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onShowSyncLoading(Z)V

    .line 177
    .end local v0    # "isNetWorkCon":Z
    :cond_3
    return-void

    .line 140
    .restart local v0    # "isNetWorkCon":Z
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v1, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onShowSyncLoading(Z)V

    goto :goto_0

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v1, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onShowSyncLoading(Z)V

    goto :goto_0

    .line 149
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentId()Ljava/lang/String;

    move-result-object v1

    if-ne v2, v1, :cond_9

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mAlbumThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mIsLoadAlbum:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_2

    .line 154
    const-string v1, "HWJ"

    const-string v2, "----------146----------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v6, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    goto/16 :goto_0

    .line 158
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v1, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onShowSyncLoading(Z)V

    goto/16 :goto_0

    .line 163
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v1, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onShowSyncLoading(Z)V

    goto/16 :goto_0

    .line 168
    :cond_9
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v6, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    goto/16 :goto_0
.end method
