.class public Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectCommand;
.super Ljava/lang/Object;
.source "SpecialEffectCommand.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/edit/Command;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private methodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectCommand;->methodList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectCommand;->methodList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public execute(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
