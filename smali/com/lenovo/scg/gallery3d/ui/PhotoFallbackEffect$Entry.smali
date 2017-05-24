.class public Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
.super Ljava/lang/Object;
.source "PhotoFallbackEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public dest:Landroid/graphics/Rect;

.field public index:I

.field public path:Lcom/lenovo/scg/gallery3d/data/Path;

.field public source:Landroid/graphics/Rect;

.field public texture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 52
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 53
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 54
    return-void
.end method
