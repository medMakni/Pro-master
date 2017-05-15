package servicesIn;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.naming.NamingException;
import javax.naming.directory.Attributes;

import org.springframework.ldap.core.AttributesMapper;
import org.springframework.ldap.core.LdapTemplate;
import org.springframework.ldap.core.support.DefaultDirObjectFactory;
import org.springframework.ldap.core.support.LdapContextSource;
import org.springframework.ldap.query.LdapQuery;
import org.springframework.ldap.query.LdapQueryBuilder;
import org.springframework.ldap.query.SearchScope;
public class LoginService {
	public String getUsersFromUid(String fbm){
		List<String> groupList = null;
		LdapQuery query = LdapQueryBuilder.query().base("ou=groups,o=mojo").searchScope(SearchScope.SUBTREE)
				.timeLimit(200).countLimit(221).where("objectclass").is("groupOfUniqueNames");
		LdapContextSource lcs = new LdapContextSource();

		lcs.setUrl("ldap://localhost:8389");
		lcs.setUserDn("uid=admin,ou=system");
		lcs.setPassword("secret");
		lcs.setDirObjectFactory(DefaultDirObjectFactory.class);
		lcs.afterPropertiesSet();
		LdapTemplate ldapTemplate = new LdapTemplate(lcs);
		// Attribute attr = attributes.get("cn");
		groupList = ldapTemplate.search("ou=users,o=mojo", "(uid="+fbm+")",
				new AttributesMapper() {
					public Object mapFromAttributes(Attributes attrs) throws NamingException {
						return attrs.get("cn").toString();
					}
				});
		List<String> a = groupList;
		System.out.println(a);
		Pattern pattern = Pattern.compile("cn: ");
		Matcher matcher = pattern.matcher(a.get(0));
	 String[] result = pattern.split(a.get(0));
		return result[1];

	}
	

}
