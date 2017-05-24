.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;
.super Ljava/lang/Object;
.source "RawContactDaoImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;


# static fields
.field public static final CONTENT_URI_CATEGORY:Landroid/net/Uri;

.field public static final CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

.field public static final CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

.field private static final LESYNC_MARK:Ljava/lang/String; = "ES"

.field private static final TAG:Ljava/lang/String; = "RawConatactDaoImpl"


# instance fields
.field protected final contactDataFields:[Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentUser:Ljava/lang/String;

.field protected final rawContactFields:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    .line 38
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    .line 39
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_CATEGORY:Landroid/net/Uri;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 55
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 56
    const-string/jumbo v1, "mimetype"

    aput-object v1, v0, v4

    .line 57
    const-string/jumbo v1, "raw_contact_id"

    aput-object v1, v0, v5

    .line 58
    const-string v1, "data1"

    aput-object v1, v0, v6

    .line 59
    const-string v1, "data2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 60
    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 61
    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 62
    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 63
    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 64
    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 65
    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 66
    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 67
    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 68
    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 69
    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 70
    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 71
    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 72
    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 73
    const-string/jumbo v2, "starred"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->contactDataFields:[Ljava/lang/String;

    .line 75
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 76
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 77
    const-string/jumbo v1, "starred"

    aput-object v1, v0, v4

    .line 78
    const-string v1, "deleted"

    aput-object v1, v0, v5

    .line 79
    const-string/jumbo v1, "sourceid"

    aput-object v1, v0, v6

    .line 80
    const-string/jumbo v1, "sync2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 81
    const-string/jumbo v2, "sync3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 82
    const-string/jumbo v2, "sync4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 83
    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 84
    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 85
    const-string v2, "contact_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->rawContactFields:[Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->currentUser:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private cursorToContact(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .locals 4
    .param p1, "contactCursor"    # Landroid/database/Cursor;

    .prologue
    .line 240
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;-><init>()V

    .line 242
    .local v0, "contact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    .line 243
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    .line 244
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    .line 245
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    .line 246
    iget v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->currentUser:Ljava/lang/String;

    .line 245
    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    .line 247
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sync2:Ljava/lang/String;

    .line 248
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sync3:Ljava/lang/String;

    .line 249
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sync4:Ljava/lang/String;

    .line 250
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->dirty:I

    .line 251
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->accountType:Ljava/lang/String;

    .line 252
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->accountName:Ljava/lang/String;

    .line 253
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->version:I

    .line 254
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->contactId:I

    .line 256
    return-object v0
.end method

.method private doTraverseContact(Landroid/content/Context;Landroid/database/Cursor;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactCursor"    # Landroid/database/Cursor;
    .param p3, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;

    .prologue
    .line 166
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .local v5, "total":I
    const/4 v2, 0x0

    .line 167
    .local v2, "cur":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 184
    :goto_1
    return-void

    .line 168
    :cond_1
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 172
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->cursorToContact(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v0

    .line 173
    .local v0, "contact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, "contactFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;>;"
    iget v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    if-nez v6, :cond_2

    .line 175
    iget v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-direct {p0, p1, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->queryContactFields(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 179
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "cur":I
    .local v3, "cur":I
    invoke-interface {p3, v0, v1, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z

    move-result v4

    .line 180
    .local v4, "goon":Z
    if-nez v4, :cond_3

    move v2, v3

    .line 181
    .end local v3    # "cur":I
    .restart local v2    # "cur":I
    goto :goto_1

    .end local v2    # "cur":I
    .restart local v3    # "cur":I
    :cond_3
    move v2, v3

    .end local v3    # "cur":I
    .restart local v2    # "cur":I
    goto :goto_0
.end method

.method private doTraverseRawContact(Landroid/database/Cursor;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;)V
    .locals 6
    .param p1, "contactCursor"    # Landroid/database/Cursor;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;

    .prologue
    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .local v4, "total":I
    const/4 v1, 0x0

    .line 205
    .local v1, "cur":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 214
    :goto_1
    return-void

    .line 207
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->cursorToContact(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v0

    .line 209
    .local v0, "contact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "cur":I
    .local v2, "cur":I
    invoke-interface {p2, v0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;II)Z

    move-result v3

    .line 210
    .local v3, "goon":Z
    if-nez v3, :cond_1

    move v1, v2

    .line 211
    .end local v2    # "cur":I
    .restart local v1    # "cur":I
    goto :goto_1

    .end local v1    # "cur":I
    .restart local v2    # "cur":I
    :cond_1
    move v1, v2

    .end local v2    # "cur":I
    .restart local v1    # "cur":I
    goto :goto_0
.end method

.method private formatPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "basePhone"    # Ljava/lang/String;

    .prologue
    .line 828
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    .end local p1    # "basePhone":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 831
    .restart local p1    # "basePhone":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 832
    .local v0, "tempAddress":Ljava/lang/String;
    const-string v1, "+86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 837
    :goto_1
    const-string v1, "[^\\d]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 838
    goto :goto_0

    .line 835
    :cond_1
    move-object v0, p1

    goto :goto_1
.end method

.method private getContactDataCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rawContactId"    # I

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 268
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    .line 269
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->contactDataFields:[Ljava/lang/String;

    const-string/jumbo v3, "raw_contact_id=?"

    .line 270
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 268
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getContactDataCursorById(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # I

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    .line 276
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->contactDataFields:[Ljava/lang/String;

    const-string v3, "_id=?"

    .line 277
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 275
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getExtendRawContactInfo(ILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .locals 10
    .param p1, "rawContactId"    # I
    .param p2, "phoneNo"    # Ljava/lang/String;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    .line 721
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 722
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    .line 723
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->contactDataFields:[Ljava/lang/String;

    .line 724
    const-string/jumbo v3, "raw_contact_id = ? and mimetype = ? "

    .line 728
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 729
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    .line 730
    const-string/jumbo v9, "vnd.android.cursor.item/name"

    aput-object v9, v4, v5

    .line 731
    const/4 v5, 0x0

    .line 722
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 733
    .local v6, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 734
    .local v8, "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    if-eqz v6, :cond_1

    .line 735
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v7

    .line 737
    .local v7, "phone":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    .end local v8    # "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    invoke-direct {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;-><init>()V

    .line 738
    .restart local v8    # "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iput p1, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    .line 739
    iput-object p2, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->phoneNo:Ljava/lang/String;

    .line 740
    iget-object v0, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    iput-object v0, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->displayName:Ljava/lang/String;

    .line 742
    .end local v7    # "phone":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 744
    :cond_1
    return-object v8
.end method

.method private getRawContactCursorByPhoneNo(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "phoneNo"    # Ljava/lang/String;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    .line 702
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 703
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    .line 704
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->contactDataFields:[Ljava/lang/String;

    .line 705
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->constructGetRawContactCursorByPhoneNoWhere()Ljava/lang/String;

    move-result-object v3

    .line 706
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 707
    const-string/jumbo v7, "vnd.android.cursor.item/phone_v2"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    .line 708
    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 703
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 709
    .local v6, "c":Landroid/database/Cursor;
    return-object v6
.end method

.method private newCreateDataOperation(Ljava/util/List;ILcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 3
    .param p2, "opsLength"    # I
    .param p3, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            ")V"
        }
    .end annotation

    .prologue
    .line 521
    .line 522
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 524
    const-string/jumbo v1, "mimetype"

    .line 525
    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->mimetype:Ljava/lang/String;

    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 527
    const-string/jumbo v1, "raw_contact_id"

    .line 526
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 528
    const-string v1, "data1"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 529
    const-string v1, "data2"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data3"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 530
    const-string v1, "data4"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data5"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 531
    const-string v1, "data6"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data7"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data7:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 532
    const-string v1, "data8"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data8:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data9"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data9:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 533
    const-string v1, "data10"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data10:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 534
    const-string v1, "data11"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data11:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 535
    const-string v1, "data12"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data12:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 536
    const-string v1, "data13"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data13:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 537
    const-string v1, "data14"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data14:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 538
    const-string v1, "data15"

    iget-object v2, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 521
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    return-void
.end method

.method private pageTraverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/Traverser;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "traverser"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/Traverser;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereParams"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, p2, p3, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->getAllContactDataCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 304
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 335
    :cond_0
    return-void

    .line 307
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 308
    .local v6, "totalRows":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 310
    div-int/lit16 v7, v6, 0x3e8

    add-int/lit8 v5, v7, 0x1

    .line 311
    .local v5, "loop":I
    const/4 v1, 0x0

    .line 312
    .local v1, "cur":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 313
    const/4 v3, 0x0

    .line 314
    .local v3, "execWhere":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "raw_contact_id % "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 315
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    :goto_1
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, v7, v3, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->getAllContactDataCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 326
    .local v2, "dataCursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 330
    :try_start_0
    invoke-interface {p1, v6, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/Traverser;->traverseData(IILandroid/database/Cursor;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 332
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 318
    .end local v2    # "dataCursor":Landroid/database/Cursor;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 319
    const-string/jumbo v8, "raw_contact_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 320
    const-string v8, " % "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 318
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 331
    .restart local v2    # "dataCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v7

    .line 332
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 333
    throw v7
.end method

.method private queryContactFields(Landroid/content/Context;I)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rawContactId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->getContactDataCursor(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 218
    .local v1, "dataCursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 236
    :goto_0
    return-object v2

    .line 222
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;>;"
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 233
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 226
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v0

    .line 230
    .local v0, "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 232
    .end local v0    # "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    :catchall_0
    move-exception v3

    .line 233
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 234
    throw v3
.end method

.method private traverseContact(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereParams"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->getContactCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 136
    .local v0, "contactCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->doTraverseContact(Landroid/content/Context;Landroid/database/Cursor;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v1

    .line 143
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 144
    throw v1
.end method


# virtual methods
.method public buildCreateContactOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .locals 9
    .param p2, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 494
    .local v4, "opsLength":I
    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 495
    const-string v6, "aggregation_mode"

    .line 496
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 495
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 497
    const-string/jumbo v6, "starred"

    iget v7, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->starred:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 498
    const-string/jumbo v6, "sync1"

    const-string v7, "ES"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 502
    const-string v6, "dirty"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 493
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    .line 504
    .local v3, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 517
    return-void

    .line 504
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 506
    .local v2, "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :try_start_0
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toData()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v0

    .line 507
    .local v0, "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    invoke-direct {p0, p1, v4, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->newCreateDataOperation(Ljava/util/List;ILcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    .end local v0    # "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    :catch_0
    move-exception v1

    .line 509
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v6, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 510
    const-string v6, "RawConatactDaoImpl"

    .line 511
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Field Create Failed[mimetype:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 512
    const-string v8, ";flag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 513
    iget-object v8, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 511
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 510
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public buildCreateFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .locals 8
    .param p2, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    .line 605
    .local v3, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 618
    return-void

    .line 605
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 607
    .local v2, "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :try_start_0
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toData()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v0

    .line 608
    .local v0, "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    iget v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    invoke-virtual {p0, p1, v0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->newCreateDataOperation(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    .end local v0    # "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    :catch_0
    move-exception v1

    .line 610
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v5, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 611
    const-string v5, "RawConatactDaoImpl"

    .line 612
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Field Create Failed[mimetype:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 613
    const-string v7, ";flag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 614
    iget-object v7, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 612
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 611
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public buildDeleteAllFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .locals 6
    .param p2, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 594
    .line 595
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 597
    const-string/jumbo v1, "raw_contact_id = ? "

    .line 598
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 596
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 594
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    return-void
.end method

.method public buildDeleteGroupFieldsOpertions(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "rawContactId"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 575
    .line 576
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 578
    const-string/jumbo v1, "raw_contact_id = ? and mimetype = ? and data1 = ?"

    .line 584
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 585
    aput-object p2, v2, v3

    const/4 v3, 0x1

    .line 586
    const-string/jumbo v4, "vnd.android.cursor.item/group_membership"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 587
    aput-object p3, v2, v3

    .line 577
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 575
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method public buildDeleteNotGroupPortraitFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .locals 6
    .param p2, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 558
    .line 559
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 561
    const-string/jumbo v1, "raw_contact_id = ? and mimetype <> ? and mimetype <> ? "

    .line 567
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "vnd.android.cursor.item/group_membership"

    aput-object v4, v2, v3

    .line 560
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 558
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    return-void
.end method

.method public buildDeleteTextFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .locals 6
    .param p2, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 544
    .line 545
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 547
    const-string/jumbo v1, "raw_contact_id = ? and mimetype <> ?"

    .line 551
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    aput-object v4, v2, v3

    .line 546
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 544
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    return-void
.end method

.method public clearRawContacts()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 895
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 896
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 897
    const-string v7, "caller_is_syncadapter"

    .line 898
    const-string/jumbo v8, "true"

    .line 897
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 898
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 900
    .local v3, "forceDeleteUri":Landroid/net/Uri;
    const/16 v0, 0x64

    .line 901
    .local v0, "batchSize":I
    invoke-virtual {p0, v9, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->queryLocalContactNumber(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 902
    .local v5, "totalCount":I
    div-int v6, v5, v0

    add-int/lit8 v1, v6, 0x1

    .line 905
    .local v1, "deleteTimes":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 916
    :goto_1
    return v5

    .line 906
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_id % "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 908
    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 905
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 909
    :catch_0
    move-exception v2

    .line 910
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 913
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 914
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public commitPrivateData()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->persist(Landroid/content/Context;)V

    .line 639
    return-void
.end method

.method protected constructGetRawContactCursorByPhoneNoWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    const-string/jumbo v0, "mimetype = ? and data1 = ? "

    return-object v0
.end method

.method protected constructGetRawContactListByPhoneNosWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "phoneNos"    # Ljava/lang/String;

    .prologue
    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mimetype = ? and data1 in ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected constructLoadAllPhoneNo2DisplayNameMapWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 842
    const-string/jumbo v0, "mimetype = ? "

    return-object v0
.end method

.method protected constructQueryRawContactNumberWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 890
    const-string v0, " deleted = 0 "

    return-object v0
.end method

.method public cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .locals 5
    .param p1, "dataCursor"    # Landroid/database/Cursor;

    .prologue
    .line 88
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;-><init>()V

    .line 91
    .local v0, "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->cid:I

    .line 92
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->mimetype:Ljava/lang/String;

    .line 93
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    .line 95
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    .line 96
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data2:Ljava/lang/String;

    .line 97
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data3:Ljava/lang/String;

    .line 98
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data4:Ljava/lang/String;

    .line 99
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data5:Ljava/lang/String;

    .line 100
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data6:Ljava/lang/String;

    .line 101
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data7:Ljava/lang/String;

    .line 102
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data8:Ljava/lang/String;

    .line 103
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data9:Ljava/lang/String;

    .line 104
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data10:Ljava/lang/String;

    .line 105
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data11:Ljava/lang/String;

    .line 106
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data12:Ljava/lang/String;

    .line 107
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data13:Ljava/lang/String;

    .line 108
    const/16 v2, 0x10

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data14:Ljava/lang/String;

    .line 109
    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    .line 110
    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->stared:I

    .line 111
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    .line 112
    iget v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->currentUser:Ljava/lang/String;

    .line 111
    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->sid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fastTraverseVisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V
    .locals 1
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->fastTraverseVisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public fastTraverseVisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;)V
    .locals 4
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;
    .param p2, "contactCids"    # Ljava/lang/String;

    .prologue
    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "where":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "raw_contact_id in ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->currentUser:Ljava/lang/String;

    invoke-direct {v0, v2, v3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V

    .line 348
    .local v0, "traverser":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/Traverser;
    const/4 v2, 0x0

    .line 349
    const-string/jumbo v3, "raw_contact_id"

    .line 348
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->pageTraverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/Traverser;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public getAllContactDataCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereParams"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 284
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    .line 285
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->contactDataFields:[Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 284
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
    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 262
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->rawContactFields:[Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getExtendRawContactInfo(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .locals 10
    .param p1, "rawContactId"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    .line 750
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 751
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    .line 752
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->contactDataFields:[Ljava/lang/String;

    .line 753
    const-string/jumbo v3, "raw_contact_id = ? and mimetype = ? "

    .line 757
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 758
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    .line 759
    const-string/jumbo v9, "vnd.android.cursor.item/name"

    aput-object v9, v4, v5

    .line 760
    const/4 v5, 0x0

    .line 751
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 762
    .local v6, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 763
    .local v8, "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    if-eqz v6, :cond_1

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v7

    .line 766
    .local v7, "phone":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    .end local v8    # "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    invoke-direct {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;-><init>()V

    .line 767
    .restart local v8    # "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iput p1, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    .line 768
    iget-object v0, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    iput-object v0, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->displayName:Ljava/lang/String;

    .line 770
    .end local v7    # "phone":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_1
    return-object v8
.end method

.method public getRawContactByPhoneNo(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .locals 4
    .param p1, "phoneNo"    # Ljava/lang/String;

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->getRawContactCursorByPhoneNo(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 688
    .local v0, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 689
    .local v2, "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    if-eqz v0, :cond_1

    .line 690
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v1

    .line 692
    .local v1, "phone":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    iget v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-direct {p0, v3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->getExtendRawContactInfo(ILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v2

    .line 695
    .end local v1    # "phone":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_1
    return-object v2
.end method

.method public getRawContactListByPhoneNos(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "phoneNos"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    .line 778
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 779
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    .line 780
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->contactDataFields:[Ljava/lang/String;

    .line 781
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->constructGetRawContactListByPhoneNosWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 782
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v10, "vnd.android.cursor.item/phone_v2"

    aput-object v10, v4, v5

    .line 783
    const/4 v5, 0x0

    .line 779
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 784
    .local v6, "c":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v9, "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;>;"
    if-eqz v6, :cond_1

    .line 786
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 794
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 796
    :cond_1
    return-object v9

    .line 787
    :cond_2
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v7

    .line 789
    .local v7, "phone":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    iget v0, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    iget-object v1, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    .line 788
    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->getExtendRawContactInfo(ILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v8

    .line 790
    .local v8, "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    if-eqz v8, :cond_0

    .line 791
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public loadAllPhoneNo2DisplayNameMap()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    .line 809
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 810
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    .line 811
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->contactDataFields:[Ljava/lang/String;

    .line 812
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->constructLoadAllPhoneNo2DisplayNameMapWhere()Ljava/lang/String;

    move-result-object v3

    .line 813
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v9, "vnd.android.cursor.item/phone_v2"

    aput-object v9, v4, v5

    .line 814
    const/4 v5, 0x0

    .line 810
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 815
    .local v6, "c":Landroid/database/Cursor;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 816
    .local v8, "phone2NameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 817
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 824
    :cond_0
    return-object v8

    .line 818
    :cond_1
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v7

    .line 819
    .local v7, "phone":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    iget-object v0, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->formatPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public newCreateDataOperation(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;I)V
    .locals 1
    .param p2, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .param p3, "rawContactId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iput p3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    .line 624
    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->newCreateFieldDataOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    return-void
.end method

.method public newCreateFieldDataOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)Landroid/content/ContentProviderOperation;
    .locals 4
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 644
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 646
    const-string/jumbo v2, "mimetype"

    .line 647
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->mimetype:Ljava/lang/String;

    .line 645
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 649
    const-string/jumbo v2, "raw_contact_id"

    .line 650
    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 648
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 650
    const-string v2, "data1"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 651
    const-string v2, "data2"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data3"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data3:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 652
    const-string v2, "data4"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data4:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data5"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data5:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 653
    const-string v2, "data6"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data6:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data7"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data7:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 654
    const-string v2, "data8"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data8:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data9"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data9:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 655
    const-string v2, "data10"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data10:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 656
    const-string v2, "data11"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data11:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 657
    const-string v2, "data12"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data12:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 658
    const-string v2, "data13"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data13:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 659
    const-string v2, "data14"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data14:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 660
    const-string v2, "data15"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 661
    .local v0, "op":Landroid/content/ContentProviderOperation;
    return-object v0
.end method

.method public newDeleteFieldDataOpertion(I)Landroid/content/ContentProviderOperation;
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 630
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 632
    const-string v1, "_id = ? "

    .line 633
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 631
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 629
    return-object v0
.end method

.method public newDeleteOpertion(I)Landroid/content/ContentProviderOperation;
    .locals 7
    .param p1, "cid"    # I

    .prologue
    .line 370
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    .line 371
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 372
    const-string v2, "caller_is_syncadapter"

    .line 373
    const-string/jumbo v3, "true"

    .line 372
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 375
    .local v0, "deleteUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 376
    const-string v2, "_id = ? "

    .line 377
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 376
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 374
    return-object v1
.end method

.method public newDeleteOpertion(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 4
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 359
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    .line 360
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 361
    const-string v2, "caller_is_syncadapter"

    .line 362
    const-string/jumbo v3, "true"

    .line 361
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 364
    .local v0, "deleteUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 365
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 363
    return-object v1
.end method

.method public newLogicalDeleteOpertion(I)Landroid/content/ContentProviderOperation;
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 383
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 384
    const-string v1, "_id = ? "

    .line 385
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 384
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 382
    return-object v0
.end method

.method public newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)Landroid/content/ContentProviderOperation;
    .locals 6
    .param p1, "rawContact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    .prologue
    .line 391
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 392
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "_id = ? "

    .line 393
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 392
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 394
    const-string/jumbo v2, "sourceid"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 395
    const-string v2, "dirty"

    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->dirty:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 396
    const-string v2, "deleted"

    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 398
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method public varargs newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;[Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 7
    .param p1, "rawContact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .param p2, "attrs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 404
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 405
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 431
    :goto_0
    return-object v2

    .line 409
    :cond_1
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 410
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "_id = ? "

    .line 411
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 410
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 412
    const-string v4, "aggregation_mode"

    .line 413
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 412
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 414
    array-length v3, p2

    :goto_1
    if-lt v2, v3, :cond_2

    .line 431
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    goto :goto_0

    .line 414
    :cond_2
    aget-object v0, p2, v2

    .line 415
    .local v0, "attr":Ljava/lang/String;
    const-string/jumbo v4, "sourceid"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 416
    const-string/jumbo v4, "sourceid"

    iget-object v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 414
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 417
    :cond_3
    const-string v4, "dirty"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 418
    const-string v4, "dirty"

    iget v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->dirty:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 419
    :cond_4
    const-string v4, "deleted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 420
    const-string v4, "deleted"

    iget v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 421
    :cond_5
    const-string/jumbo v4, "starred"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 422
    const-string/jumbo v4, "starred"

    iget v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 423
    :cond_6
    const-string/jumbo v4, "sync4"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 424
    const-string/jumbo v4, "sync4"

    iget-object v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sync4:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 426
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attribute "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 427
    const-string v4, " not allowed to update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public queryContactCId(Ljava/lang/String;)I
    .locals 2
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->currentUser:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactCid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryContactData(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, "dataCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->getContactDataCursorById(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 473
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 476
    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_0
    :goto_0
    return-object v1

    .line 475
    :catchall_0
    move-exception v1

    .line 476
    if-eqz v0, :cond_1

    .line 477
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_1
    throw v1

    .line 476
    :cond_2
    if-eqz v0, :cond_3

    .line 477
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryContactSId(I)Ljava/lang/String;
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->currentUser:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryLocalContactNumber()I
    .locals 8

    .prologue
    .line 848
    const/4 v6, 0x0

    .line 850
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 851
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    .line 852
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->constructQueryRawContactNumberWhere()Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 854
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 853
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 855
    if-eqz v6, :cond_3

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 861
    if-eqz v6, :cond_0

    .line 862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 865
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 858
    :catch_0
    move-exception v7

    .line 859
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    if-eqz v6, :cond_1

    .line 862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 865
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 860
    :catchall_0
    move-exception v1

    .line 861
    if-eqz v6, :cond_2

    .line 862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 864
    :cond_2
    throw v1

    .line 861
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_1

    .line 862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public queryLocalContactNumber(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "selections"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 870
    const/4 v6, 0x0

    .line 872
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 873
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    .line 874
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 875
    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    .line 874
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 876
    if-eqz v6, :cond_3

    .line 877
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 882
    if-eqz v6, :cond_0

    .line 883
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 886
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "projection":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 879
    :catch_0
    move-exception v7

    .line 880
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    if-eqz v6, :cond_1

    .line 883
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 886
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 881
    :catchall_0
    move-exception v1

    .line 882
    if-eqz v6, :cond_2

    .line 883
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 885
    :cond_2
    throw v1

    .line 882
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "projection":[Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_1

    .line 883
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public queryRawContact(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .locals 6
    .param p1, "cid"    # I

    .prologue
    const/4 v1, 0x0

    .line 442
    const/4 v0, 0x0

    .line 444
    .local v0, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 444
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->getContactCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->cursorToContact(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 450
    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_0
    :goto_0
    return-object v1

    .line 449
    :catchall_0
    move-exception v1

    .line 450
    if-eqz v0, :cond_1

    .line 451
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_1
    throw v1

    .line 450
    :cond_2
    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public traverseAllContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V
    .locals 1
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, p1, v0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->traverseContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public traverseAllContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;)V
    .locals 1
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;
    .param p2, "orderBy"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public traverseAllInvisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V
    .locals 6
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;

    .prologue
    const/4 v4, 0x0

    .line 485
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    const-string v3, "deleted<>0"

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->traverseContact(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public traverseAllVisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;)V
    .locals 6
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;
    .param p2, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    const-string v3, "deleted=0"

    .line 155
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->traverseContact(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public traverseContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;)V
    .locals 6
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;
    .param p2, "contactCids"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_id in ( "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    .line 128
    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->traverseContact(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public traverseContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereParams"    # [Ljava/lang/String;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->traverseContact(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;)V
    .locals 3
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;
    .param p2, "dataCids"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id in ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereParams"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 296
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->currentUser:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;)V

    .line 298
    .local v0, "traverser":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/Traverser;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->pageTraverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/Traverser;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereParams"    # [Ljava/lang/String;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    .line 190
    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->getContactCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 191
    .local v0, "contactCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->doTraverseRawContact(Landroid/database/Cursor;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v1

    .line 198
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 199
    throw v1
.end method

.method public updateContactDirty(I)I
    .locals 10
    .param p1, "dirty"    # I

    .prologue
    const/4 v7, 0x0

    .line 666
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 668
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 669
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v5, "dirty"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 672
    .local v2, "d":J
    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    invoke-virtual {v1, v5, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 675
    .local v4, "update":I
    const-string v5, "RawContactDaoImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "update all contact dirty = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 676
    const-string v7, ", effict: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 675
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return v4
.end method

.method public updateContactGSid(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)V
    .locals 4
    .param p1, "rawContact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->context:Landroid/content/Context;

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    .line 437
    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;->currentUser:Ljava/lang/String;

    .line 436
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->setContactSid(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method
