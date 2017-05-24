.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;
.source "PhoneRawContactDaoImpl.java"


# instance fields
.field private context:Landroid/content/Context;

.field wherePhone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->wherePhone:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->context:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private checkAndBuildMTKWhere()V
    .locals 9

    .prologue
    .line 25
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->wherePhone:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v7, 0x0

    .line 30
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 31
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->rawContactFields:[Ljava/lang/String;

    const-string v3, " indicate_phone_or_sim_contact >= 1 "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 35
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :goto_1
    const-string v6, "account_type"

    .line 36
    .local v6, "accountType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v8, "notSimBuilder":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_1

    .line 38
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 41
    const-string v1, "("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    const-string v2, " lower("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not like "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    const-string v2, " \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    const-string v2, " and (indicate_phone_or_sim_contact is null or indicate_phone_or_sim_contact < 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->wherePhone:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    const-string v2, " lower("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not like "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    const-string v2, " \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 32
    .end local v6    # "accountType":Ljava/lang/String;
    .end local v8    # "notSimBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method private wrapPhoneWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->checkAndBuildMTKWhere()V

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->wherePhone:Ljava/lang/String;

    .line 76
    :goto_0
    return-object p1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->wherePhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected constructGetRawContactCursorByPhoneNoWhere()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->checkAndBuildMTKWhere()V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mimetype = ? and data1 = ?  and ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->wherePhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected constructGetRawContactListByPhoneNosWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "phoneNos"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->checkAndBuildMTKWhere()V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mimetype = ? and data1 in ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const-string v1, " and ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->wherePhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected constructLoadAllPhoneNo2DisplayNameMapWhere()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->checkAndBuildMTKWhere()V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mimetype = ?  and ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->wherePhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected constructQueryRawContactNumberWhere()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->checkAndBuildMTKWhere()V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " deleted = 0  and ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->wherePhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllContactDataCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereParams"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->wrapPhoneWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->contactDataFields:[Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method protected getContactCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->wrapPhoneWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;->rawContactFields:[Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
