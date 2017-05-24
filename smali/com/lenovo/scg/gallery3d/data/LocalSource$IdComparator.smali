.class Lcom/lenovo/scg/gallery3d/data/LocalSource$IdComparator;
.super Ljava/lang/Object;
.source "LocalSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/LocalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/data/LocalSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalSource$1;

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/LocalSource$IdComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;)I
    .locals 5
    .param p1, "p1"    # Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    .param p2, "p2"    # Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;

    .prologue
    .line 291
    iget-object v4, p1, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "s1":Ljava/lang/String;
    iget-object v4, p2, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "s2":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 294
    .local v0, "len1":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 295
    .local v1, "len2":I
    if-ge v0, v1, :cond_0

    .line 296
    const/4 v4, -0x1

    .line 300
    :goto_0
    return v4

    .line 297
    :cond_0
    if-le v0, v1, :cond_1

    .line 298
    const/4 v4, 0x1

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 287
    check-cast p1, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/LocalSource$IdComparator;->compare(Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;)I

    move-result v0

    return v0
.end method
