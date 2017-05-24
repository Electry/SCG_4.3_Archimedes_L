.class Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$1;
.super Ljava/lang/Object;
.source "TimeClusteringSuper.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->run(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;

.field final synthetic val$dLatLng:[D

.field final synthetic val$totalItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;[DLjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$1;->this$0:Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$1;->val$dLatLng:[D

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$1;->val$totalItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 100
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/SmallItem;-><init>()V

    .line 101
    .local v0, "s":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/data/SmallItem;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 102
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/data/SmallItem;->dateInMs:J

    .line 103
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$1;->val$dLatLng:[D

    invoke-virtual {p2, v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 104
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$1;->val$dLatLng:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/data/SmallItem;->lat:D

    .line 105
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$1;->val$dLatLng:[D

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/data/SmallItem;->lng:D

    .line 107
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$1;->val$totalItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method
