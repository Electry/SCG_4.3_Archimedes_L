.class public Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;
.super Landroid/widget/ScrollView;
.source "RsizeScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView$OnSoftKeyBoardVisibleChangeListner;
    }
.end annotation


# instance fields
.field mListner:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView$OnSoftKeyBoardVisibleChangeListner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 45
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;->mListner:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView$OnSoftKeyBoardVisibleChangeListner;

    if-ge p2, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView$OnSoftKeyBoardVisibleChangeListner;->OnSoftKeyBoardVisibleChanged(Z)V

    .line 47
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnSoftKeyBoardChangeListner(Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView$OnSoftKeyBoardVisibleChangeListner;)V
    .locals 0
    .param p1, "mListner"    # Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView$OnSoftKeyBoardVisibleChangeListner;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;->mListner:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView$OnSoftKeyBoardVisibleChangeListner;

    .line 33
    return-void
.end method
