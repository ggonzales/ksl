create table ABContact (
	contactId varchar(100) not null primary key,
	userId varchar(100) not null,
	firstName varchar(100) null,
	middleName varchar(100) null,
	lastName varchar(100) null,
	nickName varchar(100) null,
	emailAddress varchar(100) null,
	homeStreet varchar(100) null,
	homeCity varchar(100) null,
	homeState varchar(100) null,
	homeZip varchar(100) null,
	homeCountry varchar(100) null,
	homePhone varchar(100) null,
	homeFax varchar(100) null,
	homeCell varchar(100) null,
	homePager varchar(100) null,
	homeTollFree varchar(100) null,
	homeEmailAddress varchar(100) null,
	businessCompany varchar(100) null,
	businessStreet varchar(100) null,
	businessCity varchar(100) null,
	businessState varchar(100) null,
	businessZip varchar(100) null,
	businessCountry varchar(100) null,
	businessPhone varchar(100) null,
	businessFax varchar(100) null,
	businessCell varchar(100) null,
	businessPager varchar(100) null,
	businessTollFree varchar(100) null,
	businessEmailAddress varchar(100) null,
	employeeNumber varchar(100) null,
	jobTitle varchar(100) null,
	jobClass varchar(100) null,
	hoursOfOperation longtext null,
	birthday datetime null,
	timeZoneId varchar(100) null,
	instantMessenger varchar(100) null,
	website varchar(100) null,
	comments longtext null
);

create table ABContacts_ABLists (
	contactId varchar(100) not null,
	listId varchar(100) not null
);

create table ABList (
	listId varchar(100) not null primary key,
	userId varchar(100) not null,
	name varchar(100) null
);

create table Address (
	addressId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	className varchar(100) null,
	classPK varchar(100) null,
	description varchar(100) null,
	street1 varchar(100) null,
	street2 varchar(100) null,
	city varchar(100) null,
	state varchar(100) null,
	zip varchar(100) null,
	country varchar(100) null,
	phone varchar(100) null,
	fax varchar(100) null,
	cell varchar(100) null,
	priority integer
);

create table AdminConfig (
	configId varchar(100) not null primary key,
	companyId varchar(100) not null,
	type_ varchar(100) null,
	name varchar(100) null,
	config longtext null
);

create table BJEntries_BJTopics (
	entryId varchar(100) not null,
	topicId varchar(100) not null
);

create table BJEntries_BJVerses (
	entryId varchar(100) not null,
	verseId varchar(100) not null
);

create table BJEntry (
	entryId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	content longtext null,
	versesInput longtext null
);

create table BJTopic (
	topicId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	description longtext null
);

create table BJVerse (
	verseId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	name varchar(100) null
);

create table BlogsCategory (
	categoryId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null
);

create table BlogsComments (
	commentsId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	entryId varchar(100) null,
	content longtext null
);

create table BlogsEntry (
	entryId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	categoryId varchar(100) null,
	title varchar(100) null,
	content longtext null,
	displayDate datetime null,
	sharing tinyint,
	commentable tinyint,
	propsCount integer,
	commentsCount integer
);

create table BlogsLink (
	linkId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	url varchar(100) null
);

create table BlogsProps (
	propsId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	entryId varchar(100) null,
	quantity integer
);

create table BlogsReferer (
	entryId varchar(100) not null,
	url varchar(100) not null,
	type_ varchar(100) not null,
	quantity integer,
	primary key (entryId, url, type_)
);

create table BlogsUser (
	userId varchar(100) not null primary key,
	companyId varchar(100) not null,
	entryId varchar(100) not null,
	lastPostDate datetime null
);

create table BookmarksEntry (
	entryId varchar(100) not null primary key,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	folderId varchar(100) null,
	name varchar(100) null,
	url varchar(100) null,
	comments longtext null,
	visits integer
);

create table BookmarksFolder (
	folderId varchar(100) not null primary key,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	parentFolderId varchar(100) null,
	name varchar(100) null
);

create table CalEvent (
	eventId varchar(100) not null primary key,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	title varchar(100) null,
	description longtext null,
	startDate datetime null,
	endDate datetime null,
	durationHour integer,
	durationMinute integer,
	allDay tinyint,
	timeZoneSensitive tinyint,
	type_ varchar(100) null,
	location varchar(100) null,
	street varchar(100) null,
	city varchar(100) null,
	state varchar(100) null,
	zip varchar(100) null,
	phone varchar(100) null,
	repeating tinyint,
	recurrence longtext null,
	remindBy varchar(100) null,
	firstReminder integer,
	secondReminder integer
);

create table CalTask (
	taskId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	title varchar(100) null,
	description longtext null,
	noDueDate tinyint,
	dueDate datetime null,
	priority integer,
	status integer
);

create table Company (
	companyId varchar(100) not null primary key,
	key_ longtext null,
	portalURL varchar(100) not null,
	homeURL varchar(100) not null,
	mx varchar(100) not null,
	name varchar(100) not null,
	shortName varchar(100) not null,
	type_ varchar(100) null,
	size_ varchar(100) null,
	street varchar(100) null,
	city varchar(100) null,
	state varchar(100) null,
	zip varchar(100) null,
	phone varchar(100) null,
	fax varchar(100) null,
	emailAddress varchar(100) null,
	authType varchar(100) null,
	autoLogin tinyint,
	strangers tinyint
);

create table Counter (
	name varchar(100) not null primary key,
	currentId integer
);

create table CyrusUser (
	userId varchar(100) not null primary key,
	password_ varchar(100) not null
);

create table CyrusVirtual (
	emailAddress varchar(100) not null primary key,
	userId varchar(100) not null
);

create table DLFileProfile (
	companyId varchar(100) not null,
	repositoryId varchar(100) not null,
	fileName varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	versionUserId varchar(100) not null,
	versionUserName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	readRoles varchar(100) null,
	writeRoles varchar(100) null,
	description longtext null,
	version double,
	size_ integer,
	primary key (companyId, repositoryId, fileName)
);

create table DLFileRank (
	companyId varchar(100) not null,
	userId varchar(100) not null,
	repositoryId varchar(100) not null,
	fileName varchar(100) not null,
	createDate datetime null,
	primary key (companyId, userId, repositoryId)
);

create table DLFileVersion (
	companyId varchar(100) not null,
	repositoryId varchar(100) not null,
	fileName varchar(100) not null,
	version double not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	size_ integer,
	primary key (companyId, repositoryId, fileName, version)
);

create table DLRepository (
	repositoryId varchar(100) not null primary key,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	readRoles varchar(100) null,
	writeRoles varchar(100) null,
	name varchar(100) null,
	description longtext null,
	lastPostDate datetime null
);

create table IGFolder (
	folderId varchar(100) not null primary key,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	parentFolderId varchar(100) null,
	name varchar(100) null
);

create table IGImage (
	imageId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	folderId varchar(100) null,
	description longtext null,
	height integer,
	width integer,
	size_ integer,
	primary key (imageId, companyId)
);

create table Image (
	imageId varchar(200) not null primary key,
	text_ longtext not null
);

create table JournalArticle (
	articleId varchar(100) not null,
	version double not null,
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	title varchar(100) null,
	content longtext null,
	type_ varchar(100) null,
	structureId varchar(100) null,
	templateId varchar(100) null,
	displayDate datetime null,
	expirationDate datetime null,
	approved tinyint,
	approvedByUserId varchar(100) null,
	approvedByUserName varchar(100) null,
	primary key (articleId, version)
);

create table JournalStructure (
	structureId varchar(100) not null primary key,
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	description longtext null,
	xsd longtext null
);

create table JournalTemplate (
	templateId varchar(100) not null primary key,
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	structureId varchar(100) null,
	name varchar(100) null,
	description longtext null,
	xsl longtext null,
	smallImage tinyint,
	smallImageURL varchar(100) null
);

create table Layer (
	layerId varchar(100) not null,
	skinId varchar(100) not null,
	href varchar(100) null,
	hrefHover varchar(100) null,
	background varchar(100) null,
	foreground varchar(100) null,
	negAlert varchar(100) null,
	posAlert varchar(100) null,
	primary key (layerId, skinId)
);

create table MailReceipt (
	receiptId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	recipientName varchar(100) null,
	recipientAddress varchar(100) null,
	subject varchar(100) null,
	sentDate datetime null,
	readCount integer,
	firstReadDate datetime null,
	lastReadDate datetime null
);

create table MBMessage (
	messageId varchar(100) not null,
	topicId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	threadId varchar(100) null,
	parentMessageId varchar(100) null,
	subject varchar(100) null,
	body longtext null,
	attachments tinyint,
	anonymous tinyint,
	primary key (messageId, topicId)
);

create table MBMessageFlag (
	topicId varchar(100) not null,
	messageId varchar(100) not null,
	userId varchar(100) not null,
	flag varchar(100) null,
	primary key (topicId, messageId, userId)
);

create table MBThread (
	threadId varchar(100) not null primary key,
	rootMessageId varchar(100) null,
	topicId varchar(100) null,
	messageCount integer,
	lastPostDate datetime null
);

create table MBTopic (
	topicId varchar(100) not null primary key,
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	readRoles varchar(100) null,
	writeRoles varchar(100) null,
	name varchar(100) null,
	description longtext null,
	lastPostDate datetime null
);

create table NetworkAddress (
	addressId varchar(100) not null primary key,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	url varchar(100) null,
	comments longtext null,
	content longtext null,
	status integer,
	lastUpdated datetime null,
	notifyBy varchar(100) null,
	interval_ integer,
	active_ tinyint
);

create table Note (
	noteId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	className varchar(100) null,
	classPK varchar(100) null,
	content longtext null
);

create table PasswordTracker (
	passwordTrackerId varchar(100) not null primary key,
	userId varchar(100) not null,
	createDate datetime not null,
	password_ varchar(100) not null
);

create table PollsChoice (
	choiceId varchar(100) not null,
	questionId varchar(100) not null,
	description longtext null,
	primary key (choiceId, questionId)
);

create table PollsDisplay (
	layoutId varchar(100) not null,
	userId varchar(100) not null,
	portletId varchar(100) not null,
	questionId varchar(100) not null,
	primary key (layoutId, userId, portletId)
);

create table PollsQuestion (
	questionId varchar(100) not null primary key,
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	title varchar(100) null,
	description longtext null,
	expirationDate datetime null,
	lastVoteDate datetime null
);

create table PollsVote (
	questionId varchar(100) not null,
	userId varchar(100) not null,
	choiceId varchar(100) not null,
	voteDate datetime null,
	primary key (questionId, userId)
);

create table Portlet (
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	defaultPreferences longtext null,
	narrow tinyint,
	roles longtext null,
	active_ tinyint,
	primary key (portletId, groupId, companyId)
);

create table PortletPreferences (
	portletId varchar(100) not null,
	userId varchar(100) not null,
	layoutId varchar(100) not null,
	preferences longtext null,
	primary key (portletId, userId, layoutId)
);

create table ProjFirm (
	firmId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	description longtext null,
	url varchar(100) null
);

create table ProjProject (
	projectId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	firmId varchar(100) null,
	code varchar(100) null,
	name varchar(100) null,
	description longtext null
);

create table ProjTask (
	taskId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	projectId varchar(100) null,
	name varchar(100) null,
	description longtext null,
	comments longtext null,
	estimatedDuration integer,
	estimatedEndDate datetime null,
	actualDuration integer,
	actualEndDate datetime null,
	status integer
);

create table ProjTime (
	timeId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	projectId varchar(100) null,
	taskId varchar(100) null,
	description longtext null,
	startDate datetime null,
	endDate datetime null
);

create table Release_ (
	releaseId varchar(100) not null primary key,
	createDate datetime null,
	modifiedDate datetime null,
	buildNumber integer null,
	buildDate datetime null
);

create table Skin (
	skinId varchar(100) not null primary key,
	name varchar(100) null,
	imageId varchar(100) null,
	alphaLayerId varchar(100) null,
	alphaSkinId varchar(100) null,
	betaLayerId varchar(100) null,
	betaSkinId varchar(100) null,
	gammaLayerId varchar(100) null,
	gammaSkinId varchar(100) null,
	bgLayerId varchar(100) null,
	bgSkinId varchar(100) null
);

create table ShoppingCart (
	cartId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	itemIds longtext null,
	couponIds longtext null,
	altShipping integer
);

create table ShoppingCategory (
	categoryId varchar(100) not null primary key,
	companyId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	parentCategoryId varchar(100) null,
	name varchar(100) null
);

create table ShoppingCoupon (
	couponId varchar(100) not null primary key,
	companyId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	description longtext null,
	startDate datetime null,
	endDate datetime null,
	active_ tinyint,
	limitCategories longtext null,
	limitSkus longtext null,
	minOrder double,
	discount double,
	discountType varchar(100) null
);

create table ShoppingItem (
	itemId varchar(100) not null primary key,
	companyId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	categoryId varchar(100) null,
	sku varchar(100) null,
	name varchar(100) null,
	description longtext null,
	properties longtext null,
	supplierUserId varchar(100) null,
	fields_ tinyint,
	fieldsQuantities longtext null,
	minQuantity integer,
	maxQuantity integer,
	price double,
	discount double,
	taxable tinyint,
	shipping double,
	useShippingFormula tinyint,
	requiresShipping tinyint,
	stockQuantity integer,
	featured_ tinyint,
	sale_ tinyint,
	smallImage tinyint,
	smallImageURL varchar(100) null,
	mediumImage tinyint,
	mediumImageURL varchar(100) null,
	largeImage tinyint,
	largeImageURL varchar(100) null
);

create table ShoppingItemField (
	itemFieldId varchar(100) not null primary key,
	itemId varchar(100) null,
	name varchar(100) null,
	values_ longtext null,
	description longtext null
);

create table ShoppingItemPrice (
	itemPriceId varchar(100) not null primary key,
	itemId varchar(100) null,
	minQuantity integer,
	maxQuantity integer,
	price double,
	discount double,
	taxable tinyint,
	shipping double,
	useShippingFormula tinyint,
	status integer
);

create table ShoppingOrder (
	orderId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	tax double,
	shipping double,
	altShipping varchar(100),
	requiresShipping tinyint,
	couponIds longtext null,
	couponDiscount double,
	billingFirstName varchar(100) null,
	billingLastName varchar(100) null,
	billingEmailAddress varchar(100) null,
	billingCompany varchar(100) null,
	billingStreet varchar(100) null,
	billingCity varchar(100) null,
	billingState varchar(100) null,
	billingZip varchar(100) null,
	billingCountry varchar(100) null,
	billingPhone varchar(100) null,
	shipToBilling tinyint,
	shippingFirstName varchar(100) null,
	shippingLastName varchar(100) null,
	shippingEmailAddress varchar(100) null,
	shippingCompany varchar(100) null,
	shippingStreet varchar(100) null,
	shippingCity varchar(100) null,
	shippingState varchar(100) null,
	shippingZip varchar(100) null,
	shippingCountry varchar(100) null,
	shippingPhone varchar(100) null,
	ccName varchar(100) null,
	ccType varchar(100) null,
	ccNumber varchar(100) null,
	ccExpMonth integer,
	ccExpYear integer,
	ccVerNumber varchar(100) null,
	comments longtext null,
	ppTxnId varchar(100) null,
	ppPaymentStatus varchar(100) null,
	ppPaymentGross double,
	ppReceiverEmail varchar(100) null,
	ppPayerEmail varchar(100) null,
	sendOrderEmail tinyint,
	sendShippingEmail tinyint
);

create table ShoppingOrderItem (
	orderId varchar(100) not null,
	itemId varchar(100) not null,
	sku varchar(100) null,
	name varchar(100) null,
	description longtext null,
	properties longtext null,
	supplierUserId varchar(100) null,
	price double,
	quantity integer,
	shippedDate datetime null,
	primary key (orderId, itemId)
);

create table User_ (
	userId varchar(100) not null primary key,
	companyId varchar(100) not null,
	createDate datetime null,
	password_ varchar(100) null,
	passwordEncrypted tinyint,
	passwordExpirationDate datetime null,
	passwordReset tinyint,
	firstName varchar(100) null,
	middleName varchar(100) null,
	lastName varchar(100) null,
	nickName varchar(100) null,
	male tinyint,
	birthday datetime null,
	emailAddress varchar(100) null,
	smsId varchar(100) null,
	aimId varchar(100) null,
	icqId varchar(100) null,
	msnId varchar(100) null,
	ymId varchar(100) null,
	favoriteActivity varchar(100) null,
	favoriteBibleVerse varchar(100) null,
	favoriteFood varchar(100) null,
	favoriteMovie varchar(100) null,
	favoriteMusic varchar(100) null,
	languageId varchar(100) null,
	timeZoneId varchar(100) null,
	skinId varchar(100) null,
	dottedSkins tinyint,
	roundedSkins tinyint,
	greeting varchar(100) null,
	resolution varchar(100) null,
	refreshRate varchar(100) null,
	layoutIds varchar(100) null,
	comments longtext null,
	loginDate datetime null,
	loginIP varchar(100) null,
	lastLoginDate datetime null,
	lastLoginIP varchar(100) null,
	failedLoginAttempts integer,
	agreedToTermsOfUse tinyint,
	active_ tinyint
);

create table Users_ProjProjects (
	userId varchar(100) not null,
	projectId varchar(100) not null
);

create table Users_ProjTasks (
	userId varchar(100) not null,
	taskId varchar(100) not null
);

create table UserTracker (
	userTrackerId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	modifiedDate datetime null,
	remoteAddr varchar(100) null,
	remoteHost varchar(100) null,
	userAgent varchar(100) null
);

create table UserTrackerPath (
	userTrackerPathId varchar(100) not null primary key,
	userTrackerId varchar(100) not null,
	path longtext not null,
	pathDate datetime not null
);

create table WikiDisplay (
	layoutId varchar(100) not null,
	userId varchar(100) not null,
	portletId varchar(100) not null,
	nodeId varchar(100) not null,
	showBorders tinyint,
	primary key (layoutId, userId, portletId)
);

create table WikiNode (
	nodeId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	readRoles varchar(100) null,
	writeRoles varchar(100) null,
	name varchar(100) null,
	description longtext null,
	sharing tinyint,
	lastPostDate datetime null
);

create table WikiPage (
	nodeId varchar(100) not null,
	title varchar(100) not null,
	version double not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	content longtext null,
	format varchar(100) null,
	head tinyint,
	primary key (nodeId, title, version)
);

##
## Global
##

insert into Counter values ('com.liferay.portal.model.Address', 10);
insert into Counter values ('com.liferay.portal.model.Group', 20);
insert into Counter values ('com.liferay.portal.model.Role', 100);
insert into Counter values ('com.liferay.portal.model.User.liferay.com', 10);
insert into Counter values ('com.liferay.portlet.imagegallery.model.IGFolder', 20);
insert into Counter values ('com.liferay.portlet.imagegallery.model.IGImage.liferay.com', 42);
insert into Counter values ('com.liferay.portlet.polls.model.PollsQuestion', 10);
insert into Counter values ('com.liferay.portlet.shopping.model.ShoppingCategory', 20);
insert into Counter values ('com.liferay.portlet.shopping.ejb.ShoppingItem', 40);
insert into Counter values ('com.liferay.portlet.wiki.model.WikiNode', 10);

##
## Liferay, LLC
##

insert into Company (companyId, portalURL, homeURL, mx, name, shortName, type_, size_, emailAddress, authType, autoLogin, strangers) values ('liferay.com', 'localhost', 'localhost', 'liferay.com', 'Liferay, LLC', 'Liferay', 'biz', '', 'test@liferay.com', 'emailAddress', '1', '1');
update Company set street = '1220 Brea Canyon Rd.', city = 'Diamond Bar', state = 'CA', zip = '91789' where companyId = 'liferay.com';

insert into PollsDisplay (layoutId, userId, portletId, questionId) values ('1.1', 'group.1', '59', '1');
insert into PollsChoice (choiceId, questionId, description) values ('a', '1', 'Chocolate');
insert into PollsChoice (choiceId, questionId, description) values ('b', '1', 'Strawberry');
insert into PollsChoice (choiceId, questionId, description) values ('c', '1', 'Vanilla');
insert into PollsQuestion (questionId, portletId, groupId, companyId, userId, userName, createDate, modifiedDate, title, description) values ('1', '25', '-1', 'liferay.com', 'liferay.com.1', 'John Wayne', now(), now(), 'What is your favorite ice cream flavor?', 'What is your favorite ice cream flavor?');

insert into WikiDisplay (layoutId, userId, portletId, nodeId, showBorders) values ('1.1', 'group.1', '54', '1', '1');
insert into WikiNode (nodeId, companyId, userId, userName, createDate, modifiedDate, readRoles, writeRoles, name, description, sharing, lastPostDate) values ('1', 'liferay.com', 'liferay.com.1', 'John Wayne', now(), now(), 'User,' ,'User,', 'Welcome', '', '1', now());
insert into WikiPage (nodeId, title, version, companyId, userId, userName, createDate, content, format, head) values ('1', 'FrontPage', 1.0, 'liferay.com', 'liferay.com.1', 'John Wayne', now(), '<font class="bg" size="2">Welcome! Thank you for your interest in Liferay Enterprise Portal.<br><br>Your login is <b>test@liferay.com</b> and your password is <b>test</b>. The test user has the Administrator role.<br><br>To use the <b>Mail</b> portlet, make sure there is a mail server running on <i>localhost</i> accessible through the IMAP protocol.<br><br>The mail server must have an account with <b>liferay.com.1</b> as the user and <b>test</b> as the password.<br><br><hr><br>Is Liferay useful for your company? Tell us about it by email at <b>staff@liferay.com</b>.<br><br>We hope you enjoy our product!</font>', 'html', '1');

##
## Default User
##

insert into User_ (userId, companyId, createDate, password_, passwordEncrypted, passwordReset, firstName, middleName, lastName, male, birthday, emailAddress, skinId, dottedSkins, roundedSkins, greeting, layoutIds, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values ('liferay.com.default', 'default', now(), 'password', '0', '0', '', '', '', '1', '1970-01-01', 'default@liferay.com', '01', '0', '0', 'Welcome!', '', now(), 0, '0', '1');

##
## Test User
##

insert into User_ (userId, companyId, createDate, password_, passwordEncrypted, passwordReset, firstName, middleName, lastName, nickName, male, birthday, emailAddress, skinId, dottedSkins, roundedSkins, greeting, layoutIds, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values ('liferay.com.1', 'liferay.com', now(), 'test', '0', '0', 'John', '', 'Wayne', 'Duke', '1', '1970-01-01', 'test@liferay.com', '01', '0', '1', 'Welcome John Wayne!', '1,', now(), 0, '1', '1');
