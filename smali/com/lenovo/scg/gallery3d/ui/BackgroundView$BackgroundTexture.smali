.class Lcom/lenovo/scg/gallery3d/ui/BackgroundView$BackgroundTexture;
.super Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/BackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundTexture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/BackgroundView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/BackgroundView;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resId"    # I

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/BackgroundView$BackgroundTexture;->this$0:Lcom/lenovo/scg/gallery3d/ui/BackgroundView;

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public yield()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
