.class Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;
.super Ljava/lang/Object;
.source "FaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/FaceClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceCluster"
.end annotation


# instance fields
.field mCoverFaceIndex:I

.field mCoverItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field mCoverRegion:Landroid/graphics/Rect;

.field mName:Ljava/lang/String;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/FaceClustering;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/FaceClustering;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->this$0:Lcom/lenovo/scg/gallery3d/data/FaceClustering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    .line 52
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mName:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public add(Lcom/lenovo/scg/gallery3d/data/MediaItem;I)V
    .locals 6
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .param p2, "faceIndex"    # I

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    .line 57
    .local v2, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getFaces()[Lcom/lenovo/scg/gallery3d/data/Face;

    move-result-object v1

    .line 59
    .local v1, "faces":[Lcom/lenovo/scg/gallery3d/data/Face;
    if-eqz v1, :cond_0

    .line 60
    aget-object v0, v1, p2

    .line 61
    .local v0, "face":Lcom/lenovo/scg/gallery3d/data/Face;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-nez v4, :cond_1

    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 63
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    .line 64
    iput p2, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverFaceIndex:I

    .line 74
    .end local v0    # "face":Lcom/lenovo/scg/gallery3d/data/Face;
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v0    # "face":Lcom/lenovo/scg/gallery3d/data/Face;
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object v3

    .line 67
    .local v3, "region":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 68
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 69
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    .line 70
    iput p2, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverFaceIndex:I

    goto :goto_0
.end method

.method public getCover()Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->this$0:Lcom/lenovo/scg/gallery3d/data/FaceClustering;

    # getter for: Lcom/lenovo/scg/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/FaceClustering;->access$000(Lcom/lenovo/scg/gallery3d/data/FaceClustering;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverFaceIndex:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->getFaceItem(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/data/MediaItem;I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
