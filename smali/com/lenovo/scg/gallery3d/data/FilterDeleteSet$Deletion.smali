.class Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;
.super Ljava/lang/Object;
.source "FilterDeleteSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Deletion"
.end annotation


# instance fields
.field index:I

.field path:Lcom/lenovo/scg/gallery3d/data/Path;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "index"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 64
    iput p2, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    .line 65
    return-void
.end method
