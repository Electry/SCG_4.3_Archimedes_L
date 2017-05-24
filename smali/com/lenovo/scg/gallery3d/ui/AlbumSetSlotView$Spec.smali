.class public Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;
.super Ljava/lang/Object;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# instance fields
.field public bottomMenuBarHeight:I

.field public rowsLand:I

.field public rowsPort:I

.field public slotGap:I

.field public slotHeight:I

.field public slotWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->slotWidth:I

    .line 587
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->slotHeight:I

    .line 589
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->rowsLand:I

    .line 591
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->rowsPort:I

    .line 593
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->slotGap:I

    .line 596
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->bottomMenuBarHeight:I

    return-void
.end method
