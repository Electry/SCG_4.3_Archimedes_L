.class public Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$RisingAnimation;
.super Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RisingAnimation"
.end annotation


# static fields
.field private static final RISING_DISTANCE:I = 0x80


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "slotIndex"    # I
    .param p3, "target"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 550
    const/high16 v0, 0x43000000    # 128.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$RisingAnimation;->mProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-interface {p1, v3, v3, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 551
    return-void
.end method
