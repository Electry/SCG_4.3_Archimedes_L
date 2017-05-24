.class Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .line 800
    return-void
.end method

.method public pop()Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .line 787
    .local v0, "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mNext:Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .line 788
    :cond_0
    return-object v0
.end method

.method public push(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)Z
    .locals 2
    .param p1, "tile"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .prologue
    .line 792
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 793
    .local v0, "wasEmpty":Z
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    iput-object v1, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mNext:Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .line 794
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .line 795
    return v0

    .line 792
    .end local v0    # "wasEmpty":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
