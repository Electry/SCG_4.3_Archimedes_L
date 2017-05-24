.class Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;
.super Ljava/lang/Object;
.source "FilterDeleteSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field indexHint:I

.field path:Lcom/lenovo/scg/gallery3d/data/Path;

.field type:I


# direct methods
.method public constructor <init>(ILcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p3, "indexHint"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;->type:I

    .line 51
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 52
    iput p3, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;->indexHint:I

    .line 53
    return-void
.end method
