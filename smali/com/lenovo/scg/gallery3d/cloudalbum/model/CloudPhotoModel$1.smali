.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;
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
    .line 72
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 76
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, "photoUri":Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "photoUri":Ljava/net/URL;
    .local v2, "photoUri":Ljava/net/URL;
    :try_start_1
    const-string v3, "HWJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "photoUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .end local v2    # "photoUri":Ljava/net/URL;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 82
    .restart local v1    # "photoUri":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/net/MalformedURLException;
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->throwErrorInfo(I)V

    .line 84
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v1    # "photoUri":Ljava/net/URL;
    .restart local v2    # "photoUri":Ljava/net/URL;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "photoUri":Ljava/net/URL;
    .restart local v1    # "photoUri":Ljava/net/URL;
    goto :goto_1
.end method
