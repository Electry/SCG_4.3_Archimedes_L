.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;

    .prologue
    .line 1093
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 1111
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2500(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    .line 1112
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 1114
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v1

    .line 1116
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

    .line 1104
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 1105
    .local v0, "id":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2500(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->findSet(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    .line 1106
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2500(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    return v0
.end method
