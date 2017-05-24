.class public Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCollection:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->mDataCollection:Ljava/util/LinkedList;

    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->mDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->mDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "holder":Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 58
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;)V

    .line 59
    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0401b8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    const v2, 0x7f100ab0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f100ab1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->mDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 68
    .local v1, "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 71
    return-object p2

    .line 64
    .end local v1    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;
    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setDataCollection(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->mDataCollection:Ljava/util/LinkedList;

    .line 37
    return-void
.end method
