.class Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFetch"
.end annotation


# instance fields
.field imageBit:I

.field indexOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "bit"    # I

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 101
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 102
    return-void
.end method
