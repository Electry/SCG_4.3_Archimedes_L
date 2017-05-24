.class Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$1;
.super Ljava/lang/Object;
.source "SystemShareListView.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

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
    .line 102
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 103
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 105
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 106
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
