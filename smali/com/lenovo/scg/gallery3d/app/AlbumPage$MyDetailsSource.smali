.class Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Lcom/lenovo/scg/gallery3d/app/AlbumPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage$1;

    .prologue
    .line 1348
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1368
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 1369
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 1370
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v1

    .line 1372
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1359
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 1360
    .local v0, "id":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->findItem(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    .line 1361
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    return v0
.end method
