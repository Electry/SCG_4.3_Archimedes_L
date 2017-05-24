.class final Lcom/lenovo/scg/gallery3d/data/ClusterAlbum$1;
.super Ljava/lang/Object;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/lenovo/scg/gallery3d/data/DataManager;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buf:[Lcom/lenovo/scg/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>([Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum$1;->val$buf:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum$1;->val$buf:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    aput-object p2, v0, p1

    .line 91
    return-void
.end method
