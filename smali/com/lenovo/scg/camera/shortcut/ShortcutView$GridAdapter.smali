.class public Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .line 1151
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1152
    iput-object p2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->mContext:Landroid/content/Context;

    .line 1153
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1167
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 1173
    :try_start_0
    const-string v4, "ShortcutView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getview, position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/4 v3, 0x0

    .line 1176
    .local v3, "item":Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;
    if-nez p2, :cond_0

    .line 1177
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f04017d

    const/4 v7, 0x0

    invoke-virtual {v4, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .end local v3    # "item":Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;
    check-cast v3, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;

    .line 1178
    .restart local v3    # "item":Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;
    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;->setId(I)V

    .line 1179
    const-string v6, "ShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mShortcutItemList.get(position + 5) = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/LinkedList;

    move-result-object v4

    add-int/lit8 v8, p1, 0x5

    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    iget-object v4, v4, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/LinkedList;

    move-result-object v6

    add-int/lit8 v7, p1, 0x5

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v4, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableText:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/LinkedList;

    move-result-object v7

    add-int/lit8 v8, p1, 0x5

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;->setStringAndDrawableId(II)V

    .line 1182
    new-instance v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;)V

    .line 1183
    .local v2, "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    .line 1184
    iget-object v6, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/LinkedList;

    move-result-object v4

    add-int/lit8 v7, p1, 0x5

    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;->setTag(Ljava/lang/Object;)V

    .line 1187
    new-instance v4, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter$1;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;)V

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1219
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mOrientation:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1700(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)I

    move-result v4

    rsub-int v4, v4, 0x10e

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;->setRotation(F)V

    .line 1225
    .end local v2    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    .end local v3    # "item":Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;
    :goto_1
    return-object v3

    .line 1207
    .restart local v3    # "item":Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;

    move-object v3, v0

    .line 1208
    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;->setId(I)V

    .line 1209
    const-string v4, "ShortcutView"

    const-string v6, "GridView reuse convertView"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const-string v6, "ShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mShortcutItemList.get(position + 5) = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/LinkedList;

    move-result-object v4

    add-int/lit8 v8, p1, 0x5

    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    iget-object v4, v4, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/LinkedList;

    move-result-object v6

    add-int/lit8 v7, p1, 0x5

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v4, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableText:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/LinkedList;

    move-result-object v7

    add-int/lit8 v8, p1, 0x5

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;->setStringAndDrawableId(II)V

    .line 1214
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .line 1215
    .restart local v2    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    iget-object v4, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1216
    iget-object v6, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/LinkedList;

    move-result-object v4

    add-int/lit8 v7, p1, 0x5

    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1222
    .end local v2    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    .end local v3    # "item":Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;
    :catch_0
    move-exception v1

    .line 1223
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v5

    .line 1225
    goto/16 :goto_1
.end method
