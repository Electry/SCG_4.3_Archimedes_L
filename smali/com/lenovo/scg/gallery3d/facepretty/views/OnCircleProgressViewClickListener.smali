.class public abstract Lcom/lenovo/scg/gallery3d/facepretty/views/OnCircleProgressViewClickListener;
.super Ljava/lang/Object;
.source "OnCircleProgressViewClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCircleProgressViewClick(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/views/OnCircleProgressViewClickListener;->onCircleProgressViewClick(Landroid/view/View;)V

    .line 12
    return-void
.end method
