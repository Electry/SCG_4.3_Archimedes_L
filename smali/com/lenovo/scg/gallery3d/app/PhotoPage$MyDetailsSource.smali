.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 3245
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/app/PhotoPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage$1;

    .prologue
    .line 3245
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    .locals 5

    .prologue
    .line 3249
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3250
    const/4 v3, 0x0

    .line 3260
    :goto_0
    return-object v3

    .line 3253
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 3254
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isCameraBrustPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3255
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getBrustPath(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    .line 3256
    .local v0, "brushPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v3

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v2

    .line 3257
    .local v2, "mediaset":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v3

    goto :goto_0

    .line 3260
    .end local v0    # "brushPath":Ljava/lang/String;
    .end local v2    # "mediaset":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :cond_1
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v3

    goto :goto_0
.end method

.method public setIndex()I
    .locals 1

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3269
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getMediaSet()Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getMediaSet()Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
