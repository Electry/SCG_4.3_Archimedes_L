.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;
.super Ljava/lang/Object;
.source "GroupV2SyncPerformer.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->saveGroups(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupV2RestoreResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

.field private final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->val$ops:Ljava/util/ArrayList;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildAddGroupRelationOperation(Ljava/util/List;Ljava/lang/String;J)V
    .locals 5
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "groupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;-><init>()V

    .line 311
    .local v0, "c":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Landroid/content/Context;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->currentUser:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-static {v2, p2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactCid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    .line 313
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/GroupMembership;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/GroupMembership;-><init>()V

    .line 314
    .local v1, "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/GroupMembership;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/GroupMembership;->value:Ljava/lang/Object;

    .line 315
    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->buildCreateFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V

    .line 317
    return-void
.end method


# virtual methods
.method public onVisit(Landroid/os/Bundle;)Z
    .locals 17
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    iget v13, v12, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->restoreCur:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->restoreCur:I

    .line 256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    iget v14, v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->restoreCur:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    iget v14, v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->restoreTotal:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->notifyStepProgress(F)V

    .line 259
    :try_start_0
    const-string/jumbo v12, "sid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 260
    .local v10, "sid":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v4, "existGroupTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->sid2TitlesMap:Ljava/util/Map;
    invoke-static {v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 262
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "existGroupTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->sid2TitlesMap:Ljava/util/Map;
    invoke-static {v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    .restart local v4    # "existGroupTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v12, "cg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 266
    .local v9, "serverGroupTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->currentUser:Ljava/lang/String;
    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/lang/String;

    move-result-object v13

    .line 286
    invoke-static {v12, v10, v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactCid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 288
    .local v8, "rawContactId":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_7

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/16 v13, 0x32

    if-le v12, v13, :cond_2

    .line 297
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->val$ops:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->commitOperations(Landroid/content/Context;Ljava/util/List;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    .end local v4    # "existGroupTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "rawContactId":I
    .end local v9    # "serverGroupTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "sid":Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    invoke-virtual {v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    :goto_3
    return v12

    .line 266
    .restart local v4    # "existGroupTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "serverGroupTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "sid":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 267
    .local v11, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->groupTitle2CidMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 268
    .local v6, "groupId":Ljava/lang/Integer;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_5

    .line 269
    :cond_4
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;-><init>()V

    .line 270
    .local v5, "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    iput-object v11, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;
    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    move-result-object v13

    invoke-interface {v13, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->createGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Landroid/net/Uri;

    move-result-object v7

    .line 274
    .local v7, "groupUri":Landroid/net/Uri;
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 273
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->groupCid2TitleMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->groupTitle2CidMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .end local v5    # "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    .end local v7    # "groupUri":Landroid/net/Uri;
    :cond_5
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 281
    invoke-interface {v4, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 299
    .end local v4    # "existGroupTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "groupId":Ljava/lang/Integer;
    .end local v9    # "serverGroupTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "sid":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 300
    .local v3, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;I)V

    goto :goto_2

    .line 283
    .end local v3    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    .restart local v4    # "existGroupTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "groupId":Ljava/lang/Integer;
    .restart local v9    # "serverGroupTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "sid":Ljava/lang/String;
    .restart local v11    # "title":Ljava/lang/String;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v14, v15}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->buildAddGroupRelationOperation(Ljava/util/List;Ljava/lang/String;J)V
    :try_end_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 301
    .end local v4    # "existGroupTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "groupId":Ljava/lang/Integer;
    .end local v9    # "serverGroupTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "sid":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 302
    .local v3, "e":Ljava/lang/Error;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;I)V

    goto/16 :goto_2

    .line 288
    .end local v3    # "e":Ljava/lang/Error;
    .restart local v4    # "existGroupTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "rawContactId":I
    .restart local v9    # "serverGroupTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "sid":Ljava/lang/String;
    :cond_7
    :try_start_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    .local v2, "deleteTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->groupTitle2CidMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 290
    .restart local v6    # "groupId":Ljava/lang/Integer;
    if-eqz v6, :cond_1

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$4;->val$ops:Ljava/util/ArrayList;

    .line 292
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 293
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 291
    invoke-interface/range {v13 .. v16}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->buildDeleteGroupFieldsOpertions(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 304
    .end local v2    # "deleteTitle":Ljava/lang/String;
    .end local v4    # "existGroupTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "groupId":Ljava/lang/Integer;
    .end local v8    # "rawContactId":I
    .end local v9    # "serverGroupTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "sid":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_3
.end method
