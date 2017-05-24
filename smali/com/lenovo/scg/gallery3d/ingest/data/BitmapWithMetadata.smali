.class public Lcom/lenovo/scg/gallery3d/ingest/data/BitmapWithMetadata;
.super Ljava/lang/Object;
.source "BitmapWithMetadata.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public rotationDegrees:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/data/BitmapWithMetadata;->bitmap:Landroid/graphics/Bitmap;

    .line 29
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ingest/data/BitmapWithMetadata;->rotationDegrees:I

    .line 30
    return-void
.end method
