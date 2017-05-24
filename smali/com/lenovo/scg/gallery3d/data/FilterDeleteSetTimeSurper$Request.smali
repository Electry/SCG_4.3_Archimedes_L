.class Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;
.super Ljava/lang/Object;
.source "FilterDeleteSetTimeSurper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;->type:I

    .line 53
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 54
    iput p3, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;->indexHint:I

    .line 55
    return-void
.end method
