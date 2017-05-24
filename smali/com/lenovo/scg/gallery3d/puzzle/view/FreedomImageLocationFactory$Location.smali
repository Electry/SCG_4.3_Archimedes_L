.class public Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;
.super Ljava/lang/Object;
.source "FreedomImageLocationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Location"
.end annotation


# instance fields
.field public degress:F

.field public leftupx:F

.field public leftupy:F

.field public scale:F

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V
    .locals 1
    .param p2, "leftupx"    # F
    .param p3, "leftupy"    # F
    .param p4, "degress"    # F

    .prologue
    .line 430
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mDensity:F
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->access$000(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;)F

    move-result v0

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->leftupx:F

    .line 432
    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mDensity:F
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->access$000(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;)F

    move-result v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->leftupy:F

    .line 433
    iput p4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->degress:F

    .line 434
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V
    .locals 0
    .param p2, "leftupx"    # F
    .param p3, "leftupy"    # F
    .param p4, "degress"    # F
    .param p5, "scale"    # F

    .prologue
    .line 437
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    .line 438
    iput p5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->scale:F

    .line 439
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leftupx:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->leftupx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     leftupy:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->leftupy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   degress:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->degress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
