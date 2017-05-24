.class public Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;
.super Ljava/lang/Object;
.source "LandscapeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# instance fields
.field public colsLand:I

.field public colsPort:I

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

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->slotWidth:I

    .line 1175
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->slotHeight:I

    .line 1177
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->rowsLand:I

    .line 1179
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->rowsPort:I

    .line 1181
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->colsLand:I

    .line 1183
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->colsPort:I

    .line 1185
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->slotGap:I

    return-void
.end method
