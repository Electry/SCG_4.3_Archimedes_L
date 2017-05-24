.class Lcom/lenovo/scg/gallery3d/data/ClusterTimeAlbumSet$1;
.super Ljava/lang/Object;
.source "ClusterTimeAlbumSet.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/data/ClusterTimeAlbumSet;->updateClustersContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/ClusterTimeAlbumSet;

.field final synthetic val$existing:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/data/ClusterTimeAlbumSet;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ClusterTimeAlbumSet$1;->this$0:Lcom/lenovo/scg/gallery3d/data/ClusterTimeAlbumSet;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/ClusterTimeAlbumSet$1;->val$existing:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterTimeAlbumSet$1;->val$existing:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method
