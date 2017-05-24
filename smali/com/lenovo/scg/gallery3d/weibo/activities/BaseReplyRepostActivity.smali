.class public abstract Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;
.super Landroid/app/Activity;
.source "BaseReplyRepostActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$OnEditTextContentChangeListener;
    }
.end annotation


# instance fields
.field mChangeListener:Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$OnEditTextContentChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;->requestWindowFeature(I)Z

    .line 20
    return-void
.end method

.method public setEditChangeListener(Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$OnEditTextContentChangeListener;)V
    .locals 0
    .param p1, "mChangeListener"    # Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$OnEditTextContentChangeListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;->mChangeListener:Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$OnEditTextContentChangeListener;

    .line 66
    return-void
.end method

.method protected setOnEditTextChangeListener(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "mET"    # Landroid/widget/EditText;

    .prologue
    .line 23
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    return-void
.end method
