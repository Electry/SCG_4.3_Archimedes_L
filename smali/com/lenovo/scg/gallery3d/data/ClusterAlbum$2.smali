.class Lcom/lenovo/scg/gallery3d/data/ClusterAlbum$2;
.super Ljava/lang/Object;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum$2;->this$0:Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 136
    if-nez p2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->delete()V

    goto :goto_0
.end method
