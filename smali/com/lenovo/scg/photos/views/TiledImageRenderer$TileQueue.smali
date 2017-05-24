.class Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/photos/views/TiledImageRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$1;

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .line 734
    return-void
.end method

.method public pop()Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .line 721
    .local v0, "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mNext:Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    iput-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .line 722
    :cond_0
    return-object v0
.end method

.method public push(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)Z
    .locals 2
    .param p1, "tile"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 726
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 727
    .local v0, "wasEmpty":Z
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    iput-object v1, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mNext:Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .line 728
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .line 729
    return v0

    .line 726
    .end local v0    # "wasEmpty":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
