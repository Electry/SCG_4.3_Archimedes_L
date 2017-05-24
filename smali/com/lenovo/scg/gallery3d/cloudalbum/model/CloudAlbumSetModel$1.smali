.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;
.super Ljava/lang/Object;
.source "CloudAlbumSetModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsLoadAlbumSet:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    .line 125
    .local v0, "isNetworkCon":Z
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->getDBAlbumSetData()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)V

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$302(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;Ljava/util/List;)Ljava/util/List;

    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmAlbumList(Ljava/util/List;)V

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v4, v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    .line 134
    :cond_0
    if-eqz v0, :cond_1

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->getNetWorkAlbumSetData()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)V

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->isChangedData()Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v4, v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v1, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onShowSyncLoading(Z)V

    .line 154
    .end local v0    # "isNetworkCon":Z
    :cond_2
    :goto_0
    return-void

    .line 142
    .restart local v0    # "isNetworkCon":Z
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 144
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v4, v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v1, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onShowSyncLoading(Z)V

    goto :goto_0

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v1, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onShowSyncLoading(Z)V

    goto :goto_0
.end method
