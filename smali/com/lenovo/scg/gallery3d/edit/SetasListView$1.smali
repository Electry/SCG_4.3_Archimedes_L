.class Lcom/lenovo/scg/gallery3d/edit/SetasListView$1;
.super Ljava/lang/Object;
.source "SetasListView.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/edit/SetasListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 162
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 165
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 166
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
