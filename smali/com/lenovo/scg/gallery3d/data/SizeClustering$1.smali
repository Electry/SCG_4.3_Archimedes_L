.class Lcom/lenovo/scg/gallery3d/data/SizeClustering$1;
.super Ljava/lang/Object;
.source "SizeClustering.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/data/SizeClustering;->run(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/SizeClustering;

.field final synthetic val$group:[Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/data/SizeClustering;[Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/SizeClustering$1;->this$0:Lcom/lenovo/scg/gallery3d/data/SizeClustering;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 59
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v2

    .line 61
    .local v2, "size":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/lenovo/scg/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/SizeClustering;->access$000()[J

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 62
    # getter for: Lcom/lenovo/scg/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/SizeClustering;->access$000()[J

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 67
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    aget-object v1, v4, v0

    .line 68
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    if-nez v1, :cond_1

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    aput-object v1, v4, v0

    .line 72
    :cond_1
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void

    .line 61
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
