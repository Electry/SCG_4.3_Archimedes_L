.class Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
.super Ljava/lang/Object;
.source "FilterDeleteSetTimeSurper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;
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
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 66
    iput p2, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->index:I

    .line 67
    return-void
.end method
