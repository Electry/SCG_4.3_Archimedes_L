.class public Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;
.super Ljava/lang/Object;
.source "SelectionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectionMenu"


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private final mPopupList:Lcom/lenovo/scg/gallery3d/ui/PopupList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;Lcom/lenovo/scg/gallery3d/ui/PopupList$OnPopupItemClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/ui/PopupList$OnPopupItemClickListener;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    .line 41
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/PopupList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/PopupList;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;->mPopupList:Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;->mPopupList:Lcom/lenovo/scg/gallery3d/ui/PopupList;

    const v1, 0x7f100027

    const v2, 0x7f0f0667

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PopupList;->addItem(ILjava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;->mPopupList:Lcom/lenovo/scg/gallery3d/ui/PopupList;

    invoke-virtual {v0, p3}, Lcom/lenovo/scg/gallery3d/ui/PopupList;->setOnPopupItemClickListener(Lcom/lenovo/scg/gallery3d/ui/PopupList$OnPopupItemClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;->mPopupList:Lcom/lenovo/scg/gallery3d/ui/PopupList;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PopupList;->show()V

    .line 50
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public updateSelectAllMode(Z)V
    .locals 3
    .param p1, "inSelectAllMode"    # Z

    .prologue
    .line 53
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;->mPopupList:Lcom/lenovo/scg/gallery3d/ui/PopupList;

    const v2, 0x7f100027

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PopupList;->findItem(I)Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;

    move-result-object v0

    .line 54
    .local v0, "item":Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;
    if-eqz v0, :cond_0

    .line 55
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionMenu;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v1, 0x7f0f0668

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;->setTitle(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void

    .line 55
    :cond_1
    const v1, 0x7f0f0667

    goto :goto_0
.end method
